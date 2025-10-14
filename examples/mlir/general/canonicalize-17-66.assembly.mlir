module {
  func.func @collapse_of_cast(%arg0: tensor<8x12x32xf32>) -> tensor<?x32xf32> {
    %cast = tensor.cast %arg0 : tensor<8x12x32xf32> to tensor<?x?x?xf32>
    %collapsed = tensor.collapse_shape %cast [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
    %cast_0 = tensor.cast %collapsed : tensor<?x?xf32> to tensor<?x32xf32>
    return %cast_0 : tensor<?x32xf32>
  }
}

