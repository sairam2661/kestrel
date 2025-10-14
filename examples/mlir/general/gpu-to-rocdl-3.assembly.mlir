module {
  gpu.module @test_module {
    func.func @gpu_sync() {
      gpu.barrier
      return
    }
  }
}

