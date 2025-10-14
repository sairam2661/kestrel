module {
  gpu.module @foo {
    gpu.func @memref3d(%arg0: memref<5x4xf32> {gpu.test_promote_workgroup}) kernel {
      "use"(%arg0) : (memref<5x4xf32>) -> ()
      gpu.return
    }
  }
}

