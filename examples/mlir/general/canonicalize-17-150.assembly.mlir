module {
  func.func @dim_of_reshape_i32(%arg0: tensor<*xf32>, %arg1: tensor<?xi32>) -> index {
    %c3 = arith.constant 3 : index
    %reshape = tensor.reshape %arg0(%arg1) : (tensor<*xf32>, tensor<?xi32>) -> tensor<*xf32>
    %dim = tensor.dim %reshape, %c3 : tensor<*xf32>
    return %dim : index
  }
}

