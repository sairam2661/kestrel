module {
  func.func @nested_tuple_multi_level_success() {
    %0 = "test.nested_tuple_32_bit"() : () -> tuple<i32, tuple<i32, tuple<i32>>>
    return
  }
}

