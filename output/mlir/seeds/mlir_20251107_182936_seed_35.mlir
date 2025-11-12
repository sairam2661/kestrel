"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects_and_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.select"(%1, %arg0, %2) : (i1, i32, i32) -> i32
    %4 = "tosa.const"() <{value = 1.0 : f32}> : () -> f32
    %5 = "arith.addf"(%arg1, %4) : (f32, f32) -> f32
    %6 = "arith.cmpf"(%arg1, %4, "eq") : (f32, f32) -> i1
    %7 = "arith.select"(%6, %arg1, %4) : (i1, f32, f32) -> f32
    "func.return"(%3, %7) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()