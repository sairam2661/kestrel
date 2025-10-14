module {
  func.func @memory_barrier_1() {
    spirv.MemoryBarrier <Workgroup>, <Acquire>
    return
  }
}

