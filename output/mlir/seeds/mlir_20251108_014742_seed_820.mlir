"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i64, f64), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.extendui"(%2) : (i32) -> i64
    %5 = "arith.extf64"(%3) : (f32) -> f64
    "func.return"(%4, %5) : (i64, f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64, f64) -> (i32, f32), sym_name = "mixed_types_reverse"}> ({
  ^bb0(%arg2: i64, %arg3: f64):
    %6 = "arith.trunci"(%arg2) : (i64) -> i32
    %7 = "arith.truncf"(%arg3) : (f64) -> f32
    "func.return"(%6, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()