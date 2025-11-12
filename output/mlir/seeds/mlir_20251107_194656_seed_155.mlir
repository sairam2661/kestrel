"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i64), sym_name = "complex_arithmetic_and_conversion"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %2 = "arith.constant"() <{value = 12345 : i32}> : () -> i32
    %3 = "arith.addi"(%arg1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    %5 = "arith.addi"(%3, %4) : (i32, i64) -> i64
    "func.return"(%1, %5) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()