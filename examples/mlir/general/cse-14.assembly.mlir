module {
  func.func @remove_direct_duplicated_read_op() -> i32 {
    %0 = "test.op_with_memread"() : () -> i32
    %1 = "test.op_with_memread"() : () -> i32
    %2 = arith.addi %0, %1 : i32
    return %2 : i32
  }
}

