module {
  func.func @cast_int_to_int_sign() -> tensor<i32> {
    %0 = "tosa.const"() <{values = dense<-1> : tensor<i16>}> : () -> tensor<i16>
    %1 = tosa.cast %0 : (tensor<i16>) -> tensor<i32>
    return %1 : tensor<i32>
  }
}

