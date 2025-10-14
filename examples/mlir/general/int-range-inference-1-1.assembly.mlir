module {
  func.func @dim_any_static(%arg0: memref<3x5xi32>, %arg1: index) -> index {
    %dim = memref.dim %arg0, %arg1 : memref<3x5xi32>
    %0 = test.reflect_bounds %dim : index
    return %0 : index
  }
}

