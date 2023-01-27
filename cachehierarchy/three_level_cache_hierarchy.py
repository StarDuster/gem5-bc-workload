from gem5.components.cachehierarchies.classic.abstract_classic_cache_hierarchy import (
    AbstractClassicCacheHierarchy,
)
from gem5.components.boards.abstract_board import AbstractBoard

from m5.objects import *
from gem5.isas import ISA

from .skylake_caches import *

class ThreeLevelCacheHierarchy(AbstractClassicCacheHierarchy):
    def __init__(self, l1dmshr=2, l1dwb=2, l2mshr=2, l2wb=2, l3mshr=2, l3wb=2) -> None:
        AbstractClassicCacheHierarchy.__init__(self=self)
        self.membus = SystemXBar(width=192)
        self.membus.badaddr_responder = BadAddr()
        self.membus.default = Self.badaddr_responder.pio

        self._l1dmshr = l1dmshr
        self._l1dwb = l1dwb
        self._l2mshr = l2mshr
        self._l2wb = l2wb
        self._l3mshr = l3mshr
        self._l3wb = l3wb

    def get_mem_side_port(self) -> Port:
        return self.membus.mem_side_ports

    def get_cpu_side_port(self) -> Port:
        return self.membus.cpu_side_ports

    def incorporate_cache(self, board: AbstractBoard) -> None:
        # Set up the system port for functional access from the simulator.
        board.connect_system_port(self.membus.cpu_side_ports)

        for cntr in board.get_memory().get_memory_controllers():
            cntr.port = self.membus.mem_side_ports

        # create caches and buses
        self.l1icache = L1ICache()
        self.l1dcache = L1DCache(self._l1dmshr, self._l1dwb)
        self.ptwcache = MMUCache()
        self.l2cache = L2Cache(self._l2mshr, self._l2wb)
        self.l3cache = L3Cache(self._l3mshr, self._l3wb)
        # self.ptwXBar = L2XBar()
        self.l2XBar = L2XBar(width=192)
        self.l3XBar = L2XBar(width=192)
        
        # connect all the caches and buses
        # core = board.get_processor().get_cores()[0].core
        cpu = board.get_processor().get_cores()[0]
        core = cpu.core
        self.l1icache.connectCPU(core)
        self.l1icache.connectBus(self.l2XBar)
        self.l1dcache.connectCPU(core)
        self.l1dcache.connectBus(self.l2XBar)

        self.ptwcache.connectCPU(core)
        self.ptwcache.connectBus(self.l2XBar)
        # self.ptwcache.mem_side = self.l2XBar.cpu_side_ports
        # cpu.connect_walker_ports(
        #     self.ptwXBar.cpu_side_ports, self.ptwXBar.cpu_side_ports
        # )
        # self.ptwcache.cpu_side = self.ptwXBar.mem_side_ports

        self.l2cache.connectCPUSideBus(self.l2XBar)
        self.l2cache.connectMemSideBus(self.l3XBar)

        self.l3cache.connectCPUSideBus(self.l3XBar)
        self.l3cache.connectMemSideBus(self.membus)

        # # Assume that we only need one interrupt controller
        # core.createInterruptController()
        # core.interrupts[0].pio = self.membus.mem_side_ports
        # core.interrupts[0].int_requestor = self.membus.cpu_side_ports
        # core.interrupts[0].int_responder = self.membus.mem_side_ports
        if board.get_processor().get_isa() == ISA.X86:
            int_req_port = self.membus.mem_side_ports
            int_resp_port = self.membus.cpu_side_ports
            cpu.connect_interrupt(int_req_port, int_resp_port)
        else:
            cpu.connect_interrupt()

        if board.has_coherent_io():
            self._setup_io_cache(board)

    def _setup_io_cache(self, board: AbstractBoard) -> None:
        """Create a cache for coherent I/O connections"""
        self.iocache = Cache(
            assoc=8,
            tag_latency=50,
            data_latency=50,
            response_latency=50,
            mshrs=20,
            size="1kB",
            tgts_per_mshr=12,
            addr_ranges=board.mem_ranges,
        )
        self.iocache.mem_side = self.membus.cpu_side_ports
        self.iocache.cpu_side = board.get_mem_side_coherent_io_port()