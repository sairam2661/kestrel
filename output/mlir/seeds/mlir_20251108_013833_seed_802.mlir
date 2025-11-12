"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 50 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %4 = "arith.muli"(%2, %0) : (i32, i32) -> i32
    %5 = "arith.muli"(%3, %1) : (i64, i64) -> i64
    "func.return"(%4, %5) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()