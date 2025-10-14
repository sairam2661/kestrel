module {
  func.func @tensor_with_unknown_rank(%arg0: tensor<*xi32>) -> tensor<*xi32> {
    %0 = tosa.abs %arg0 : (tensor<*xi32>) -> tensor<*xi32>
    return %0 : tensor<*xi32>
  }
}

