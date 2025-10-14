module {
  func.func @unsupportedRescaleInexactRound(%arg0: tensor<2xi8>) -> tensor<2xi8> {
    %0 = "tosa.const"() <{values = dense<19689> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<33> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = tosa.rescale %arg0, %0, %1, %2, %3 {input_unsigned = false, input_zp = 243 : i32, output_unsigned = false, output_zp = 252 : i32, per_channel = false, rounding_mode = "INEXACT_ROUND", scale32 = true} : (tensor<2xi8>, tensor<1xi32>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<2xi8>
    return %4 : tensor<2xi8>
  }
}

