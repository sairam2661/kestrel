module {
  func.func @extract_from_static_shape(%arg0: tensor<2x6x32xf32>, %arg1: index, %arg2: index) -> f32 {
    %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2]] : tensor<2x6x32xf32> into tensor<12x32xf32>
    %extracted = tensor.extract %collapsed[%arg1, %arg2] : tensor<12x32xf32>
    return %extracted : f32
  }
}

