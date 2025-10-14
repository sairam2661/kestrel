module {
  func.func @mul_one_float(%arg0: tensor<2x3xf32>) -> tensor<2x3xf32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<2x3xf32>}> : () -> tensor<2x3xf32>
    %2 = tosa.mul %arg0, %1, %0 : (tensor<2x3xf32>, tensor<2x3xf32>, tensor<1xi8>) -> tensor<2x3xf32>
    return %2 : tensor<2x3xf32>
  }
}

