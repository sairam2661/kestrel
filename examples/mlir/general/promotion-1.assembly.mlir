module {
  gpu.module @foo {
    gpu.func @memref5d(%arg0: memref<8x7x6x5x4xf32> {gpu.test_promote_workgroup}) kernel {
      "use"(%arg0) : (memref<8x7x6x5x4xf32>) -> ()
      gpu.return
    }
  }
}

