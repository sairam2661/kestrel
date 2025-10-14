module {
  func.func @tuple_mixed_success() {
    %0 = "test.tuple_32_bit"() : () -> tuple<i32, f32>
    return
  }
}

