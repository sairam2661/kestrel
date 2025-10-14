module {
  func.func @collapse_shape_identity_fold(%arg0: tensor<5x4xf32>) -> tensor<5x4xf32> {
    %collapsed = tensor.collapse_shape %arg0 [[0], [1]] : tensor<5x4xf32> into tensor<5x4xf32>
    return %collapsed : tensor<5x4xf32>
  }
}

