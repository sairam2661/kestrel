module {
  func.func @cast_values(%arg0: tensor<*xi32>) -> tensor<2xi32> {
    %cast = tensor.cast %arg0 : tensor<*xi32> to tensor<*xi32>
    %cast_0 = tensor.cast %cast : tensor<*xi32> to tensor<2xi32>
    %cast_1 = tensor.cast %cast_0 : tensor<2xi32> to tensor<2xi32>
    return %cast_1 : tensor<2xi32>
  }
}

