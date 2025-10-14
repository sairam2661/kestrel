module {
  func.func @cast_float_to_int() -> tensor<i16> {
    %0 = "tosa.const"() <{values = dense<-4.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = tosa.cast %0 : (tensor<f32>) -> tensor<i16>
    return %1 : tensor<i16>
  }
}

