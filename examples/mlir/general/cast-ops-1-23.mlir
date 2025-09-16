"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f64, sym_name = "f_convert_scalar"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.FConvert"(%arg0) : (f32) -> f64
    "spirv.ReturnValue"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

