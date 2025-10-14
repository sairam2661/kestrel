module {
  func.func @remove_multiple_duplicated_read_op() -> i64 {
    %0 = "test.op_with_memread"() : () -> i64
    %1 = "test.op_with_memread"() : () -> i64
    %2 = arith.addi %0, %1 : i64
    %3 = "test.op_with_memread"() : () -> i64
    %4 = arith.addi %2, %3 : i64
    %5 = "test.op_with_memread"() : () -> i64
    %6 = arith.addi %4, %5 : i64
    return %6 : i64
  }
}

