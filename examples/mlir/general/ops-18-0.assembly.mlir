module {
  func.func @cast(%arg0: tensor<*xf32>, %arg1: tensor<4x4xf32>, %arg2: tensor<?x?xf32>) {
    %cast = tensor.cast %arg0 : tensor<*xf32> to tensor<?x?xf32>
    %cast_0 = tensor.cast %arg1 : tensor<4x4xf32> to tensor<*xf32>
    %cast_1 = tensor.cast %arg2 : tensor<?x?xf32> to tensor<4x?xf32>
    %cast_2 = tensor.cast %cast_1 : tensor<4x?xf32> to tensor<?x?xf32>
    return
  }
}

