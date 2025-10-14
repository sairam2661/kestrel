module {
  func.func @tensor.reshape() -> tensor<2x2x5xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<2x10xf32>
    %cast = tensor.cast %cst : tensor<2x10xf32> to tensor<?x10xf32>
    %cst_0 = arith.constant dense<[2, 2, 5]> : tensor<3xi64>
    %reshape = tensor.reshape %cast(%cst_0) : (tensor<?x10xf32>, tensor<3xi64>) -> tensor<2x2x5xf32>
    return %reshape : tensor<2x2x5xf32>
  }
}

