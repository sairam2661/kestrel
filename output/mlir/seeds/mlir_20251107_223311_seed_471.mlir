"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32, f64) -> (i32, f64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32, %arg3: f64):
    %0 = "arith.constant"() <{value = 42}> : () -> i32
    %1 = "arith.constant"() <{value = 1000000000000}> : () -> i64
    %2 = "arith.constant"() <{value = 3.14159}> : () -> f32
    %3 = "arith.constant"() <{value = 2.71828}> : () -> f64
    %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %5 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %6 = "arith.addf"(%arg2, %2) : (f32, f32) -> f32
    %7 = "arith.addf"(%arg3, %3) : (f64, f64) -> f64
    "func.return"(%4, %7) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()