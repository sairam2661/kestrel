module {
  func.func @rescale_per_channel(%arg0: tensor<3xi8>) -> tensor<3xi8> {
    %0 = "tosa.const"() <{values = dense<[42, 43, 44]> : tensor<3xi16>}> : () -> tensor<3xi16>
    %1 = "tosa.const"() <{values = dense<[14, 15, 64]> : tensor<3xi8>}> : () -> tensor<3xi8>
    %2 = "tosa.const"() <{values = dense<43> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<52> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = tosa.rescale %arg0, %0, %1, %2, %3 {input_unsigned = false, output_unsigned = false, per_channel = true, rounding_mode = "SINGLE_ROUND", scale32 = false} : (tensor<3xi8>, tensor<3xi16>, tensor<3xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<3xi8>
    return %4 : tensor<3xi8>
  }
}

