module {
  func.func @tuple_success() {
    %0 = "test.tuple_32_bit"() : () -> tuple<i32>
    return
  }
}

