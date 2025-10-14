module {
  func.func @memref_op(%arg0: memref<2x4xf32>) {
    memref.copy %arg0, %arg0 : memref<2x4xf32> to memref<2x4xf32>
    return
  }
}

