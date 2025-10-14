module {
  func.func @verifyLargerBenefit() -> i32 {
    %0 = "test.illegal_op_c"() : () -> i32
    return %0 : i32
  }
}

