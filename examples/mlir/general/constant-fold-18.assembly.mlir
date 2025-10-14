module {
  func.func @mulf_splat_tensor() -> tensor<4xf32> {
    %cst = arith.constant dense<4.500000e+00> : tensor<4xf32>
    %cst_0 = arith.constant dense<1.500000e+00> : tensor<4xf32>
    %0 = arith.mulf %cst, %cst_0 : tensor<4xf32>
    return %0 : tensor<4xf32>
  }
}

