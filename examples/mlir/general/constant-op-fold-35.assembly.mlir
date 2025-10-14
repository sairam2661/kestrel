module {
  func.func @cast_int_to_float() -> tensor<f16> {
    %0 = "tosa.const"() <{values = dense<4> : tensor<i32>}> : () -> tensor<i32>
    %1 = tosa.cast %0 : (tensor<i32>) -> tensor<f16>
    return %1 : tensor<f16>
  }
}

