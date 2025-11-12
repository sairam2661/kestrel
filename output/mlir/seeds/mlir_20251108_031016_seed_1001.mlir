"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> f32, sym_name = "complex_spirv_return"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.mulf"(%0, %arg2) : (f32, f32) -> f32
    %2 = "arith.subf"(%1, %arg0) : (f32, f32) -> f32
    %3 = "arith.divf"(%2, %arg1) : (f32, f32) -> f32
    "spirv.ReturnValue"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()