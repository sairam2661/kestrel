module {
  func.func @memref_store(%arg0: memref<4x8xf32>, %arg1: f32, %arg2: index, %arg3: index) {
    memref.store %arg1, %arg0[%arg2, %arg3] : memref<4x8xf32>
    return
  }
}

