module {
  func.func @collapse_shape_splat(%arg0: f32) -> tensor<2x4xf32> {
    %splat = tensor.splat %arg0 : tensor<2x2x2xf32>
    %collapsed = tensor.collapse_shape %splat [[0], [1, 2]] : tensor<2x2x2xf32> into tensor<2x4xf32>
    return %collapsed : tensor<2x4xf32>
  }
}

