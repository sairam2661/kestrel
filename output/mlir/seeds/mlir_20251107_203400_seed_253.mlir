"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_arith_ops"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %arg0) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %3 = "arith.addi"(%1, %arg0) : (i32, i32) -> i32
      "func.return"(%1, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()