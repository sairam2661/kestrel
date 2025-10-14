module {
  func.func @collapse_shape_splat_dynamic_no_fold(%arg0: f32, %arg1: index) -> tensor<2x?xf32> {
    %splat = tensor.splat %arg0[%arg1] : tensor<2x2x?xf32>
    %collapsed = tensor.collapse_shape %splat [[0], [1, 2]] : tensor<2x2x?xf32> into tensor<2x?xf32>
    return %collapsed : tensor<2x?xf32>
  }
}

