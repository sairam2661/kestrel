module {
  gpu.module @kernel {
    gpu.func @test_func_readonly_ptr(%arg0: !llvm.ptr {llvm.readonly}) {
      gpu.return
    }
  }
}

