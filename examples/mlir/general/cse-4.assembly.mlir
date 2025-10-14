module {
  func.func @different_results(%arg0: tensor<*xf32>) -> (tensor<?x?xf32>, tensor<4x?xf32>) {
    %cast = tensor.cast %arg0 : tensor<*xf32> to tensor<?x?xf32>
    %cast_0 = tensor.cast %arg0 : tensor<*xf32> to tensor<4x?xf32>
    return %cast, %cast_0 : tensor<?x?xf32>, tensor<4x?xf32>
  }
}

