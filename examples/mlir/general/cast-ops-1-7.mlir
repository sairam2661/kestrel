"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> i32, sym_name = "convert_f64_to_s32_scalar"}> ({
  ^bb0(%arg0: f64):
    %0 = "spirv.ConvertFToS"(%arg0) : (f64) -> i32
    "spirv.ReturnValue"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

