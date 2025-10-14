module {
  func.func @memref_copy_i4(%arg0: memref<32x128xi4, 1>, %arg1: memref<32x128xi4>) {
    memref.copy %arg0, %arg1 : memref<32x128xi4, 1> to memref<32x128xi4>
    return
  }
}

