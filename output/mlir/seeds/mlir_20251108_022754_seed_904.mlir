"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20.0 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlagsAttributes}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) <{fastmath = #arith_fastmathAttributes}> : (f32, f32) -> f32
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()