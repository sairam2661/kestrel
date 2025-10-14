module {
  func.func @verifyDirectPattern() -> i32 {
    %0 = "test.illegal_op_a"() : () -> i32
    return %0 : i32
  }
}

