"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %1 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %4 = "arith.addf"(%arg1, %3) <{overflowFlags = #arith_overflow_none}> : (f32, f32) -> f32
    %5 = "arith.mulf"(%4, %4) <{overflowFlags = #arith_overflow_none}> : (f32, f32) -> f32
    "spirv.ReturnValue"(%2, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()