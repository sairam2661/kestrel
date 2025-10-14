module {
  func.func @memref_realloc_dead(%arg0: memref<2xf32>, %arg1: f32) -> memref<2xf32> {
    %0 = memref.realloc %arg0 : memref<2xf32> to memref<4xf32>
    %c2 = arith.constant 2 : index
    memref.store %arg1, %0[%c2] : memref<4xf32>
    return %arg0 : memref<2xf32>
  }
}

