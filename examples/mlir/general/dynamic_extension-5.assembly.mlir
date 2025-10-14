module {
  func.func @test_rescale_non_const_shift(%arg0: tensor<13x21x3xi32>, %arg1: tensor<1xi8>) -> tensor<13x21x3xi32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<1073741824> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = tosa.rescale %arg0, %1, %arg1, %0, %0 {input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true} : (tensor<13x21x3xi32>, tensor<1xi32>, tensor<1xi8>, tensor<1xi32>, tensor<1xi32>) -> tensor<13x21x3xi32>
    return %2 : tensor<13x21x3xi32>
  }
}

