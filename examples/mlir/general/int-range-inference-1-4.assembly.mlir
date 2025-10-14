module {
  func.func @dim_some_omitting_dynamic(%arg0: memref<?x3x5xi32>, %arg1: index) -> index {
    %c1 = arith.constant 1 : index
    %0 = arith.maxsi %arg1, %c1 : index
    %dim = memref.dim %arg0, %0 : memref<?x3x5xi32>
    %1 = test.reflect_bounds %dim : index
    return %1 : index
  }
}

