module {
  func.func @test_rescale_non_const_multiplier(%arg0: tensor<13x21x3xi32>, %arg1: tensor<1xi32>) -> tensor<13x21x3xi32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = tosa.rescale %arg0, %arg1, %1, %0, %0 {input_unsigned = false, input_zp = 0 : i32, output_unsigned = false, output_zp = 0 : i32, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true} : (tensor<13x21x3xi32>, tensor<1xi32>, tensor<1xi8>, tensor<1xi32>, tensor<1xi32>) -> tensor<13x21x3xi32>
    return %2 : tensor<13x21x3xi32>
  }
}

