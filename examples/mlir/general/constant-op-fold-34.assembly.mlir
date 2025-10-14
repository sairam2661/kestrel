module {
  func.func @cast_float_to_float() -> tensor<f16> {
    %0 = "tosa.const"() <{values = dense<4.200000e+01> : tensor<f32>}> : () -> tensor<f32>
    %1 = tosa.cast %0 : (tensor<f32>) -> tensor<f16>
    return %1 : tensor<f16>
  }
}

