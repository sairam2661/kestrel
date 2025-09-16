"builtin.module"() ({
  "func.func"() <{function_type = () -> i64, sym_name = "remove_multiple_duplicated_read_op"}> ({
    %0 = "test.op_with_memread"() : () -> i64
    %1 = "test.op_with_memread"() : () -> i64
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %3 = "test.op_with_memread"() : () -> i64
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %5 = "test.op_with_memread"() : () -> i64
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%6) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

