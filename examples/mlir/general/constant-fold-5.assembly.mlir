module {
  func.func @addf_dense_and_splat_tensors() -> tensor<4xf32> {
    %cst = arith.constant dense<[1.500000e+00, 2.500000e+00, 3.500000e+00, 4.500000e+00]> : tensor<4xf32>
    %cst_0 = arith.constant dense<1.500000e+00> : tensor<4xf32>
    %0 = arith.addf %cst, %cst_0 : tensor<4xf32>
    return %0 : tensor<4xf32>
  }
}

