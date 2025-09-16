"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> f32, sym_name = "convert_u_to_f_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.ConvertUToF"(%arg0) : (i32) -> f32
    "spirv.ReturnValue"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

