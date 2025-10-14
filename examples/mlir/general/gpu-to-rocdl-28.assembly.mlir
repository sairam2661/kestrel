module {
  gpu.module @test_module {
    gpu.func @kernel_func() kernel {
      gpu.return
    }
  }
}

