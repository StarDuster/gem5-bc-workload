# Copyright (c) 2022 The Regents of the University of California
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met: redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer;
# redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution;
# neither the name of the copyright holders nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

"""
This gem5 run script will run a binary passed in via an argument in SE mode.

This script creates a board that has a single x86-based CPU, a two-level cache
hierarchy, and a single channel of DDR4 memory.

If the binary has ROI annotations (`m5_work_begig` and `m5_work_end`) this
script will reset the stats at the beginning of the ROI and it will dump the
stats and exit at the end of the ROI unless `--ignore_roi` is set on the
command line.

After running the binary, the script prints the instructions, simulated time, 
and cycles. More detailed statistics can be found in the output directory
(`m5out/`) by default.
"""

from gem5.simulate.simulator import Simulator
from gem5.simulate.exit_event import ExitEvent
from gem5.simulate.exit_event_generators import (
    reset_stats_generator,
    skip_generator,
    exit_generator,
)

from board import SimpleX86Board, OutOfOrderProcX86Board, SkylakeX86Board
from workload import mm_workload

from argparse import ArgumentParser


def setup_arguments():
    parser = ArgumentParser(
        description="Simple script to run the mm binary. By default, this "
        "scripts expects the mm binary will have ROI annotations and it will "
        "only return statistics for the ROI."
    )

    parser.add_argument(
        "--ignore_roi",
        action="store_true",
        default=False,
        help="Ignore the ROI annotations and run the whole workload",
    )

    parser.add_argument(
        "--processor_type",
        choices=["simple", "out-of-order", "verbatim", "tuned", "unconstrained"],
        help="Simple processor is an in-order single cycle CPU.",
        default="out-of-order",
    )

    parser.add_argument(
        "--l1dmshr",
        type=int,
        help="Number of L1 data cache mshrs",
        default=2,
    )
    
    parser.add_argument(
        "--l1dwb",
        type=int,
        default=2,
        help="Number of L1 data cache writebuffers",
    )

    parser.add_argument(
        "--l2mshr",
        type=int,
        help="Number of L2 cache mshrs",
        default=2,
    )

    parser.add_argument(
        "--l2wb",
        type=int,
        default=2,
        help="Number of L2 cache writebuffers",
    )

    parser.add_argument(
        "--l3mshr",
        type=int,
        help="Number of L3 cache mshrs",
        default=2,
    )

    parser.add_argument(
        "--l3wb",
        type=int,
        default=2,
        help="Number of L3 cache writebuffers",
    )

    return parser.parse_args()

def print_stats_simple(stats):
    instructions = int(
        stats["board"]["processor"]["cores"]["core"]["exec_context.thread_0"][
            "numInsts"
        ]["value"]
    )
    cycles = int(stats["board"]["processor"]["cores"]["core"]["numCycles"]["value"])
    ticks = int(
        stats["simulated_end_time"] - stats["simulated_begin_time"]
    )  # In 10^-12s (ps)

    print(f"Simulated time (ms): {ticks/1e9:0.5f}")
    print(f"Executed instructions: {instructions}")
    print(f"Cycles: {cycles}")
    print(f"IPC: {instructions/cycles}")


def print_stats_ooo(stats):
    instructions = int(
        stats["board"]["processor"]["cores"]["core"]["committedInsts"]["0"]["value"]
    )
    executed_instructions = int(
        stats["board"]["processor"]["cores"]["core"]["numInsts"]["value"]
    )
    cycles = int(stats["board"]["processor"]["cores"]["core"]["numCycles"]["value"])
    ticks = int(
        stats["simulated_end_time"] - stats["simulated_begin_time"]
    )  # In 10^-12s (ps)

    # l1dmiss = int(stats["board"]["cache_hierarchy"]["l1dcache"]["overallMisses"]["value"])
    # print(f"L1DCache MPKI: {l1dmiss * 1000 / instructions}")

    # l1imiss = int(stats["board"]["cache_hierarchy"]["l1icache"]["overallMisses"]["value"])
    # print(f"L1ICache MPKI: {l1imiss * 1000 / instructions}")
    
    # l2miss = int(stats["board"]["cache_hierarchy"]["l2cache"]["overallMisses"]["value"])
    # print(f"L2Cache MPKI: {l2miss * 1000 / instructions}")

    # l3miss = int(stats["board"]["cache_hierarchy"]["l3cache"]["overallMisses"]["value"])
    # print(f"L3Cache MPKI: {l3miss * 1000 / instructions}")

    print(f"Simulated time (ms): {ticks/1e9:0.5f}")
    print(f"Executed instructions: {instructions}")
    print(f"Cycles: {cycles}")
    print(f"IPC: {instructions/cycles}")


if __name__ == "__m5_main__":
    args = setup_arguments()

    if args.processor_type == "simple":
        board = SimpleX86Board(
            clock_frequency=args.frequency,
        )
    elif args.processor_type == "out-of-order":
        board = OutOfOrderProcX86Board(
            clock_frequency=args.frequency,
            width=args.width,
            lsq_depth=args.lsq_depth,
            rob_entries=args.rob_entries,
        )
    elif args.processor_type == "verbatim" or "tuned" or "unconstrained":
        board = SkylakeX86Board(
            cpu_type=args.processor_type,
            l1dmshr=args.l1dmshr,
            l1dwb=args.l1dwb,
            l2mshr=args.l2mshr,
            l2dwb=args.l2wb,
            l3mshr=args.l3mshr,
            l3wb=args.l3wb,
        )
    else:
        raise Exception

    board.set_workload(mm_workload)

    if args.ignore_roi:
        begin_generator = skip_generator()
        end_generator = skip_generator()
    else:
        begin_generator = reset_stats_generator()
        end_generator = exit_generator()

    simulator = Simulator(
        board=board,
        on_exit_event={
            ExitEvent.WORKBEGIN: begin_generator,
            ExitEvent.WORKEND: end_generator,
        },
    )
    simulator.run()

    if args.processor_type == "simple":
        print_stats_simple(simulator.get_stats())
    else:
        print_stats_ooo(simulator.get_stats())
