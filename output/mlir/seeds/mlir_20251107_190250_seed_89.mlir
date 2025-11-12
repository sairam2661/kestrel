"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32) -> (i32, f32), sym_name = "mixedOps"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
    %4 = "arith.const"() <{value = 2.0 : f32}> : () -> f32
    %5 = "arith.addf"(%3, %4) : (f32, f32) -> f32
    "func.return"(%2, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()