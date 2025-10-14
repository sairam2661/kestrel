module {
  func.func @tensor.collapse_shape(%arg0: tensor<2x?x?xf32>) -> tensor<?x?xf32> {
    %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2]] : tensor<2x?x?xf32> into tensor<?x?xf32>
    return %collapsed : tensor<?x?xf32>
  }
}

