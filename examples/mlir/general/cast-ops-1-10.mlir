"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i32, sym_name = "convert_f_to_u_scalar"}> ({
  ^bb0(%arg0: f32):
    %0 = "spirv.ConvertFToU"(%arg0) : (f32) -> i32
    "spirv.ReturnValue"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

