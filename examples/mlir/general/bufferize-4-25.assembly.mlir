module {
  func.func @tensor.collapse_shape_to_scalar(%arg0: tensor<1x1x1xf32>) -> tensor<f32> {
    %collapsed = tensor.collapse_shape %arg0 [] : tensor<1x1x1xf32> into tensor<f32>
    return %collapsed : tensor<f32>
  }
}

