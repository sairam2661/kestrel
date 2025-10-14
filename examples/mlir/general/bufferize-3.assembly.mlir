module {
  func.func @multiple_constants() -> (tensor<3x4xf32>, tensor<3x4xf32>) {
    %cst = arith.constant dense<7.000000e+00> : tensor<3x4xf32>
    %cst_0 = arith.constant dense<8.000000e+00> : tensor<3x4xf32>
    return %cst, %cst_0 : tensor<3x4xf32>, tensor<3x4xf32>
  }
}

