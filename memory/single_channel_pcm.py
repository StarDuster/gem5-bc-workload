from gem5.components.memory.memory import ChanneledMemory
from gem5.components.memory.abstract_memory_system import AbstractMemorySystem

from typing import Optional

from .pcm import PCM_1200_16x4, NVM_1200

def SingleChannelPCM_1200(
    size: Optional[str] = None,
) -> AbstractMemorySystem:
    """
    A single channel memory system using DDR3_1600_8x8 based DIMM
    """
    return ChanneledMemory(PCM_1200_16x4, 1, 64, size=size)

def SingleChannelNVM_1200(
    size: Optional[str] = None,
) -> AbstractMemorySystem:
    """
    A singel nvm based DIMM
    """
    return ChanneledMemory(NVM_1200, 1, 64, size=size)