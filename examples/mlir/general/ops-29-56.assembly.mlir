module {
  func.func @test_mul_relaxed_result_type(%arg0: tensor<13x21x3xi16>, %arg1: tensor<13x1x3xi16>) -> tensor<13x21x3xi16> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg1, %0 : (tensor<13x21x3xi16>, tensor<13x1x3xi16>, tensor<1xi8>) -> tensor<13x21x3xi16>
    return %1 : tensor<13x21x3xi16>
  }
}

