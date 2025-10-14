module {
  func.func @memref_load(%arg0: memref<4x8xf32>, %arg1: index, %arg2: index) -> f32 {
    %0 = memref.load %arg0[%arg1, %arg2] : memref<4x8xf32>
    return %0 : f32
  }
}

