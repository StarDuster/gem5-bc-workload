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
This file defines a simple matrix-multiple workload object.

This assumes that there is a binary named "mm" in the current working
directory when gem5 is executed.
"""

from gem5.resources.workload import CustomWorkload
from gem5.resources.resource import CustomResource

exe_dir = "/home/jun/source/gem5-bootcamp-env/gem5/gem5-quickstart/workload/mm"
# exe_dir = "/home/jun/source/gem5-bootcamp-env/gem5/gem5-quickstart/workload/looptest"
# exe_dir = "/home/jun/source/bench/embench-iot/bd/src/wikisort/wikisort"

mm_workload = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(exe_dir),
        "arguments": ["16"]
        # Note: 64 takes ~10s, 128 takes ~30s, and 256 takes ~4 min
    },
)

ahamont64_dir = "/home/jun/source/bench/embench-iot/bd/src/aha-mont64/aha-mont64"
ahamont64 = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(ahamont64_dir),
        "arguments": []
    },
)

crc32_dir = "/home/jun/source/bench/embench-iot/bd/src/crc32/crc32"
crc32 = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(crc32_dir),
        "arguments": []
    },
)

cubic_dir = "/home/jun/source/bench/embench-iot/bd/src/cubic/cubic"
cubic = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(cubic_dir),
        "arguments": []
    },
)

edn_dir = "/home/jun/source/bench/embench-iot/bd/src/edn/edn"
edn = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(edn_dir),
        "arguments": []
    },
)

huffbench_dir = "/home/jun/source/bench/embench-iot/bd/src/huffbench/huffbench"
huffbench = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(huffbench_dir),
        "arguments": []
    },
)

matmultint_dir = "/home/jun/source/bench/embench-iot/bd/src/matmult-int/matmult-int"
matmultint = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(matmultint_dir),
        "arguments": []
    },
)

md5sum_dir = "/home/jun/source/bench/embench-iot/bd/src/md5sum/md5sum"
md5sum = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(md5sum_dir),
        "arguments": []
    },
)

minver_dir = "/home/jun/source/bench/embench-iot/bd/src/minver/minver"
minver = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(minver_dir),
        "arguments": []
    },
)

nbody_dir = "/home/jun/source/bench/embench-iot/bd/src/nbody/nbody"
nbody = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(nbody_dir),
        "arguments": []
    },
)

nettleaes_dir = "/home/jun/source/bench/embench-iot/bd/src/nettle-aes/nettle-aes"
nettleaes = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(nettleaes_dir),
        "arguments": []
    },
)

nettlesha256_dir = "/home/jun/source/bench/embench-iot/bd/src/nettle-sha256/nettle-sha256"
nettlesha256 = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(nettlesha256_dir),
        "arguments": []
    },
)

nsichneu_dir = "/home/jun/source/bench/embench-iot/bd/src/nsichneu/nsichneu"
nsichneu = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(nsichneu_dir),
        "arguments": []
    },
)

picojpeg_dir = "/home/jun/source/bench/embench-iot/bd/src/picojpeg/picojpeg"
picojpeg = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(picojpeg_dir),
        "arguments": []
    },
)

primecount_dir = "/home/jun/source/bench/embench-iot/bd/src/primecount/primecount"
primecount = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(primecount_dir),
        "arguments": []
    },
)

qrduino_dir = "/home/jun/source/bench/embench-iot/bd/src/qrduino/qrduino"
qrduino = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(qrduino_dir),
        "arguments": []
    },
)

slre_dir = "/home/jun/source/bench/embench-iot/bd/src/slre/slre"
slre = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(slre_dir),
        "arguments": []
    },
)

st_dir = "/home/jun/source/bench/embench-iot/bd/src/st/st"
st = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(st_dir),
        "arguments": []
    },
)

statemate_dir = "/home/jun/source/bench/embench-iot/bd/src/statemate/statemate"
statemate = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(statemate_dir),
        "arguments": []
    },
)

tarfind_dir = "/home/jun/source/bench/embench-iot/bd/src/tarfind/tarfind"
tarfind = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(tarfind_dir),
        "arguments": []
    },
)

ud_dir = "/home/jun/source/bench/embench-iot/bd/src/ud/ud"
ud = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(ud_dir),
        "arguments": []
    },
)

wikisort_dir = "/home/jun/source/bench/embench-iot/bd/src/wikisort/wikisort"
wikisort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(wikisort_dir),
        "arguments": []
    },
)

stlintrosort_dir = "/home/jun/source/bench/benchmarks/sort/stlintrosort"
stlintrosort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(stlintrosort_dir),
        "arguments": ['400000']
    },
) 

stlstablesort_dir = "/home/jun/source/bench/benchmarks/sort/stlstablesort"
stlstablesort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(stlstablesort_dir),
        "arguments": ['400000']
    },
) 

stlheapsort_dir = "/home/jun/source/bench/benchmarks/sort/stlheapsort"
stlheapsort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(stlheapsort_dir),
        "arguments": ['400000']
    },
) 

combsort_dir = "/home/jun/source/bench/benchmarks/sort/combsort"
combsort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(combsort_dir),
        "arguments": ['400000']
    },
) 

libcqsort_dir = "/home/jun/source/bench/benchmarks/sort/libcqsort"
libcqsort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(libcqsort_dir),
        "arguments": ['400000']
    },
) 

itermergesort_dir = "/home/jun/source/bench/benchmarks/sort/itermergesort"
itermergesort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(itermergesort_dir),
        "arguments": ['400000']
    },
) 

paulheapsort_dir = "/home/jun/source/bench/benchmarks/sort/paulheapsort"
paulheapsort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(paulheapsort_dir),
        "arguments": ['400000']
    },
) 

paulquicksort_dir = "/home/jun/source/bench/benchmarks/sort/paulquicksort"
paulquicksort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(paulquicksort_dir),
        "arguments": ['400000']
    },
) 

paulmergesort_dir = "/home/jun/source/bench/benchmarks/sort/paulmergesort"
paulmergesort = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(paulmergesort_dir),
        "arguments": ['400000']
    },
) 

##############################################################################

itermergesort1m = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['1000000']
    },
) 

itermergesort500k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['500000']
    },
) 

itermergesort400k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['400000']
    },
) 

itermergesort300k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['300000']
    },
) 

itermergesort200k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['200000']
    },
) 

itermergesort100k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['100000']
    },
) 


itermergesort50k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['50000']
    },
) 

itermergesort5k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/itermergesort"),
        "arguments": ['5000']
    },
) 

iter100kstage2 = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/iterstage2"),
        "arguments": ['100000']
    },
) 

iterp100kall = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/iterpall"),
        "arguments": ['100000']
    },
) 

iter200kstage2 = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/iterstage2"),
        "arguments": ['200000']
    },
) 

iterp200kall = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/iterpall"),
        "arguments": ['200000']
    },
) 

#######################################################################################

paulquicksort1m = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulquicksort"),
        "arguments": ['1000000']
    },
) 

paulquicksort500k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulquicksort"),
        "arguments": ['500000']
    },
) 


paulquicksort100k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulquicksort"),
        "arguments": ['100000']
    },
) 


paulquicksort50k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulquicksort"),
        "arguments": ['50000']
    },
) 


paulheapsort1m = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulheapsort"),
        "arguments": ['1000000']
    },
) 

paulheapsort500k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulheapsort"),
        "arguments": ['500000']
    },
) 


paulheapsort100k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulheapsort"),
        "arguments": ['100000']
    },
) 


paulheapsort50k = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource("/home/jun/source/bench/benchmarks/sort/paulheapsort"),
        "arguments": ['50000']
    },
) 


#################################################################################

poorcache_dir = "/home/jun/source/bench/poorcache"
poorcache = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(poorcache_dir),
        "arguments": ["1000"]
    },
) 

polybench_dir = "/home/jun/source/bench/polybench"
polybench = CustomWorkload(
    function="set_se_binary_workload",
    parameters={
        "binary": CustomResource(polybench_dir),
        "arguments": [""]
    },
) 
