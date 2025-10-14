module {
  func.func @compose_collapse_of_collapse(%arg0: tensor<?x?x?x?x?xf32>) -> tensor<?x?xf32> {
    %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2], [3, 4]] : tensor<?x?x?x?x?xf32> into tensor<?x?x?xf32>
    %collapsed_0 = tensor.collapse_shape %collapsed [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
    return %collapsed_0 : tensor<?x?xf32>
  }
}

