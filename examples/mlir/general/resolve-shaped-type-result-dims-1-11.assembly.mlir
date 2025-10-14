module {
  func.func @dim_of_softmax_op(%arg0: tensor<?x16x?xf32>, %arg1: tensor<2x?x?xf32>) -> (index, index, index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %0 = linalg.softmax dimension(2) ins(%arg0 : tensor<?x16x?xf32>) outs(%arg1 : tensor<2x?x?xf32>) -> tensor<2x?x?xf32>
    %dim = tensor.dim %0, %c0 : tensor<2x?x?xf32>
    %dim_0 = tensor.dim %0, %c1 : tensor<2x?x?xf32>
    %dim_1 = tensor.dim %0, %c2 : tensor<2x?x?xf32>
    return %dim, %dim_0, %dim_1 : index, index, index
  }
}

