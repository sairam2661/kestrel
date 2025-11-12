"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32, i64) -> (i8, i32, i64), sym_name = "complex_interaction"}> ({
    ^bb0(%arg0: i8, %arg1: i32, %arg2: i64):
      %0 = "arith.addi"(%arg1, %arg2) : (i32, i64) -> i64
      %1 = "arith.muli"(%arg0, %0) : (i8, i64) -> i64
      %2 = "arith.trunci"(%1) : (i64) -> i8
      "func.return"(%2, %arg1, %arg2) : (i8, i32, i64) -> ()
  }) : () -> ()
}) : () -> ()