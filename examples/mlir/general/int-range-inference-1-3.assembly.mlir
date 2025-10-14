module {
  func.func @dim_any_dynamic(%arg0: memref<?x5xi32>, %arg1: index) -> index {
    %dim = memref.dim %arg0, %arg1 : memref<?x5xi32>
    %0 = test.reflect_bounds %dim : index
    return %0 : index
  }
}

