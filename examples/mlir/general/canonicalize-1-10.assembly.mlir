module {
  func.func @out_of_bound_memref.dim(%arg0: memref<?xi8>, %arg1: index) -> index {
    %c2 = arith.constant 2 : index
    %dim = memref.dim %arg0, %c2 : memref<?xi8>
    return %dim : index
  }
}

