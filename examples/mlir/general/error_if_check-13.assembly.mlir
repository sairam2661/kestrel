module {
  func.func @test_error_scale32_with_i48(%arg0: tensor<1xi48>) -> tensor<1xi8> {
    %0 = "tosa.const"() <{values = dense<19689> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi48>}> : () -> tensor<1xi48>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = tosa.rescale %arg0, %0, %1, %2, %3 {input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true} : (tensor<1xi48>, tensor<1xi32>, tensor<1xi8>, tensor<1xi48>, tensor<1xi8>) -> tensor<1xi8>
    return %4 : tensor<1xi8>
  }
}

