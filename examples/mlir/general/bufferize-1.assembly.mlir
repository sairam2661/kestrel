module {
  func.func @basic() -> tensor<3x4xf32> {
    %cst = arith.constant dense<7.000000e+00> : tensor<3x4xf32>
    return %cst : tensor<3x4xf32>
  }
}

