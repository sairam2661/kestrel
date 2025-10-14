module {
  func.func @mul_one_int(%arg0: tensor<2x3xi32>) -> tensor<2x3xi32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %2 = tosa.mul %arg0, %1, %0 : (tensor<2x3xi32>, tensor<2x3xi32>, tensor<1xi8>) -> tensor<2x3xi32>
    return %2 : tensor<2x3xi32>
  }
}

