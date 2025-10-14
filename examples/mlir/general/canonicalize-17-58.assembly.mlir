module {
  func.func @fold_reshape_constant_splat(%arg0: tensor<1xi32>) -> tensor<4xf32> {
    %cst = arith.constant dense<1.000000e-01> : tensor<4x1xf32>
    %reshape = tensor.reshape %cst(%arg0) : (tensor<4x1xf32>, tensor<1xi32>) -> tensor<4xf32>
    return %reshape : tensor<4xf32>
  }
}

