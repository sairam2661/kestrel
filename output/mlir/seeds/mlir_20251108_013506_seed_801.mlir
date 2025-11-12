"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f64, i64), sym_name = "mixed_dialects_test"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%0, %2) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%3, %0, "gt") : (f32, f32) -> i1
    %5 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    %6 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    %7 = "arith.extui"(%6) : (i32) -> i64
    %8 = "arith.addi"(%7, %5) : (i64, i64) -> i64
    "func.return"(%3, %8) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()