module {
  func.func @collapse_shape_rank0_identity_fold(%arg0: tensor<f32>) -> tensor<f32> {
    %collapsed = tensor.collapse_shape %arg0 [] : tensor<f32> into tensor<f32>
    return %collapsed : tensor<f32>
  }
}

