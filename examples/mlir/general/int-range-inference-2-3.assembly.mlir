module {
  func.func @dim_any_dynamic(%arg0: tensor<?x5xi32>, %arg1: index) -> index {
    %dim = tensor.dim %arg0, %arg1 : tensor<?x5xi32>
    %0 = test.reflect_bounds %dim : index
    return %0 : index
  }
}

