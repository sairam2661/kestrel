module {
  func.func @dim_reshape_collapse(%arg0: tensor<2x3x5x4x?x7xf32>) -> (index, index) {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2], [3, 4, 5]] : tensor<2x3x5x4x?x7xf32> into tensor<6x5x?xf32>
    %dim = tensor.dim %collapsed, %c1 : tensor<6x5x?xf32>
    %dim_0 = tensor.dim %collapsed, %c2 : tensor<6x5x?xf32>
    return %dim, %dim_0 : index, index
  }
}

