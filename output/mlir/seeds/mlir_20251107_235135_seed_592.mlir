"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, index) -> f32, sym_name = "spirv_complex_function"}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.mulf"(%0, %0) : (f32, f32) -> f32
    %2 = "arith.addf"(%1, %0) : (f32, f32) -> f32
    %3 = "arith.mulf"(%2, %2) : (f32, f32) -> f32
    %4 = "arith.addf"(%3, %2) : (f32, f32) -> f32
    "spirv.ReturnValue"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()