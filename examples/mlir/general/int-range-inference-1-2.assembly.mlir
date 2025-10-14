module {
  func.func @dim_dynamic(%arg0: memref<?x5xi32>) -> index {
    %c0 = arith.constant 0 : index
    %dim = memref.dim %arg0, %c0 : memref<?x5xi32>
    %0 = test.reflect_bounds %dim : index
    return %0 : index
  }
}

