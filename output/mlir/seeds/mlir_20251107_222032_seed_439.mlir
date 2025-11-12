"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, i32) -> (f32), sym_name = "mixed_types_spirv"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %3 = "arith.muli"(%arg1, %1) : (i32, i32) -> i32
    %4 = "arith.sitofp"(%3) : (i32) -> f32
    %5 = "arith.addf"(%2, %4) : (f32, f32) -> f32
    "spirv.ReturnValue"(%5) : (f32) -> ()
  }) : () -> (f32)
}) : () -> ()