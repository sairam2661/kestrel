module {
  func.func @from_unranked_to_unranked(%arg0: tensor<*xi32>) -> tensor<*xi32> {
    %cast = tensor.cast %arg0 : tensor<*xi32> to tensor<*xi32>
    return %cast : tensor<*xi32>
  }
}

