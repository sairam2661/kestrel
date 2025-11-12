"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_type_computation"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.extui"(%0) : (i32) -> i64
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %5 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.addi"(%1, %4) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    "func.return"(%5, %6) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()