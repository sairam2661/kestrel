module {
  func.func @create_unregistered_op_in_pattern() -> i32 {
    %0 = "test.illegal_op_g"() : () -> i32
    "test.return"(%0) : (i32) -> ()
  }
}

