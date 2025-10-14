module {
  func.func @tensor.cast_from_unranked(%arg0: tensor<*xf32>) -> tensor<2xf32> {
    %cast = tensor.cast %arg0 : tensor<*xf32> to tensor<2xf32>
    return %cast : tensor<2xf32>
  }
}

