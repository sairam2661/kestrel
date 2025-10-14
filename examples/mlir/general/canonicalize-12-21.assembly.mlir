module {
  func.func @dim_of_memref_reshape_i32(%arg0: memref<*xf32>, %arg1: memref<?xi32>) -> index {
    %c3 = arith.constant 3 : index
    %reshape = memref.reshape %arg0(%arg1) : (memref<*xf32>, memref<?xi32>) -> memref<*xf32>
    %dim = memref.dim %reshape, %c3 : memref<*xf32>
    return %dim : index
  }
}

