module {
  func.func @remove_all_ops(%arg0: i32) -> i32 {
    %0 = "test.illegal_op_a"() : () -> i32
    return %0 : i32
  }
}

