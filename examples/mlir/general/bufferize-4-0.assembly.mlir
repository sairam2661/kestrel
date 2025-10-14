module {
  func.func @dim(%arg0: tensor<*xf32>, %arg1: index) -> index {
    %dim = tensor.dim %arg0, %arg1 : tensor<*xf32>
    return %dim : index
  }
}

