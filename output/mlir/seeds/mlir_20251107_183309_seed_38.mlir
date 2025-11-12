"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addi"(%arg1, %arg1) : (i64, i64) -> i64
    %2 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %3 = "arith.muli"(%1, %1) : (i64, i64) -> i64
    %4 = "arith.addi"(%2, %3) : (i32, i64) -> i64
    "func.return"(%0, %4) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()