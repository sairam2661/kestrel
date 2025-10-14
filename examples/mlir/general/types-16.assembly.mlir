module {
  func.func @nested_tuple_multi_level_mixed_success() {
    %0 = "test.nested_tuple_32_bit"() : () -> tuple<i32, tuple<f32, tuple<i32>>>
    return
  }
}

