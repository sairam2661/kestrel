"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "multi_dialect_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %4 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.addf"(%3, %4) : (f32, f32) -> f32
    "func.return"(%2, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()