"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "remove_direct_duplicated_read_op"}> ({
    %0 = "test.op_with_memread"() : () -> i32
    %1 = "test.op_with_memread"() : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

