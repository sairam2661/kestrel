module {
  func.func @matmul_dyn_independent_dim(%arg0: tensor<1x5x?xf32>, %arg1: tensor<1x?x6xf32>) -> tensor<1x5x6xf32> {
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %2 = tosa.matmul %arg0, %arg1, %0, %1 : (tensor<1x5x?xf32>, tensor<1x?x6xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1x5x6xf32>
    return %2 : tensor<1x5x6xf32>
  }
}

