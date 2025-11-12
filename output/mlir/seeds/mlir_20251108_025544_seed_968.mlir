"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.constant"() <{value = 1.5 : f32}> : () -> f32
    %2 = "arith.addf"(%0, %1) : (f32, f32) -> f32
    %3 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
    "func.return"(%2, %5) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()