module {
  func.func @dont_remove_duplicated_read_op_with_sideeffecting() -> i32 {
    %0 = "test.op_with_memread"() : () -> i32
    "test.op_with_memwrite"() : () -> ()
    %1 = "test.op_with_memread"() : () -> i32
    %2 = arith.addi %0, %1 : i32
    return %2 : i32
  }
}

