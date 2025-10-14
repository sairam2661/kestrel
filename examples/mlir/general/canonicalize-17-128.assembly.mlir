module {
  func.func @fold_collapse_shape_from_elements(%arg0: i32) -> tensor<i32> {
    %from_elements = tensor.from_elements %arg0 : tensor<1xi32>
    %collapsed = tensor.collapse_shape %from_elements [] : tensor<1xi32> into tensor<i32>
    return %collapsed : tensor<i32>
  }
}

