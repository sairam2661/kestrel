module {
  func.func @compose_collapse_of_collapse_unit_dims_dynamic(%arg0: tensor<?x1x?x1x1x?x?x1x1xf32>) -> tensor<?x?x?x?xf32> {
    %collapsed = tensor.collapse_shape %arg0 [[0], [1, 2], [3], [4], [5], [6, 7, 8]] : tensor<?x1x?x1x1x?x?x1x1xf32> into tensor<?x?x1x1x?x?xf32>
    %collapsed_0 = tensor.collapse_shape %collapsed [[0], [1], [2, 3, 4], [5]] : tensor<?x?x1x1x?x?xf32> into tensor<?x?x?x?xf32>
    return %collapsed_0 : tensor<?x?x?x?xf32>
  }
}

