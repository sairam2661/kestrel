"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, f64), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflowFlags}> : (i64, i64) -> i64
    %4 = "arith.constant"() <{value = 2.718 : f32}> : () -> f32
    %5 = "arith.addf"(%arg2, %4) <{fastmath = #arith_fastmath}> : (f32, f32) -> f32
    "func.return"(%1, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()