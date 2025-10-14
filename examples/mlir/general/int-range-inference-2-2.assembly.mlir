module {
  func.func @dim_dynamic(%arg0: tensor<?x5xi32>) -> index {
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg0, %c0 : tensor<?x5xi32>
    %0 = test.reflect_bounds %dim : index
    return %0 : index
  }
}

