module {
  gpu.module @barriers {
    func.func @gpu_barrier() {
      gpu.barrier
      return
    }
  }
}

