module {
  func.func @cast_int_to_int_trunc() -> tensor<i16> {
    %0 = "tosa.const"() <{values = dense<-1> : tensor<i32>}> : () -> tensor<i32>
    %1 = tosa.cast %0 : (tensor<i32>) -> tensor<i16>
    return %1 : tensor<i16>
  }
}

