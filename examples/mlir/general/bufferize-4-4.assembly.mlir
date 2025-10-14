module {
  func.func @tensor.cast_to_unranked(%arg0: tensor<2xf32>) -> tensor<*xf32> {
    %cast = tensor.cast %arg0 : tensor<2xf32> to tensor<*xf32>
    return %cast : tensor<*xf32>
  }
}

