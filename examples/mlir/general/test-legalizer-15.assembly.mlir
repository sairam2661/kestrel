module {
  func.func @fail_to_convert_illegal_op() -> i32 {
    %0 = "test.illegal_op_f"() : () -> i32
    return %0 : i32
  }
}

