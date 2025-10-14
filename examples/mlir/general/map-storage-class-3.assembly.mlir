module {
  gpu.module @kernel {
    gpu.func @function_io(%arg0: memref<8xi32>) kernel {
      gpu.return
    }
  }
}

