"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, i64) -> (i32, f32, i64), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %5 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    "func.return"(%3, %4, %5) : (i32, f32, i64) -> ()
  }) : () -> ()
}) : () -> ()