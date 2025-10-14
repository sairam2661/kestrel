module {
  func.func @out_of_bound_dim_of_collapse_shape(%arg0: tensor<?x?x?x7x?xf32>) -> index {
    %c5 = arith.constant 5 : index
    %collapsed = tensor.collapse_shape %arg0 [[0], [1, 2, 3, 4]] : tensor<?x?x?x7x?xf32> into tensor<?x?xf32>
    %dim = tensor.dim %collapsed, %c5 : tensor<?x?xf32>
    return %dim : index
  }
}

