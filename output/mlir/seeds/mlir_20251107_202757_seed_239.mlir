"builtin.module"() ({
  "spirv.func"() <{function_type = (f32, f32) -> f32, sym_name = "multiply_add"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmath_attrs}> : (f32, f32) -> f32
    "spirv.ReturnValue"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()