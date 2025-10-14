module {
  func.func @legal_collapsing_reshape_dynamic_tensor(%arg0: tensor<?x?x?x4x?xf32>) -> tensor<?x?x?xf32> {
    %collapsed = tensor.collapse_shape %arg0 [[0], [1], [2, 3, 4]] : tensor<?x?x?x4x?xf32> into tensor<?x?x?xf32>
    return %collapsed : tensor<?x?x?xf32>
  }
}

