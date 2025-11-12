"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0) <{predicate = 3 : i64}> : (i32, i32) -> i1
      %2 = "arith.select"(%1, %0, %arg1) : (i1, i32, i32) -> i32
      %3 = "arith.mulsi"(%2, %arg1) : (i32, i32) -> i32
      "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()