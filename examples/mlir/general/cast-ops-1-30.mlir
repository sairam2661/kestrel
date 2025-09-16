"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i64, sym_name = "s_convert_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.SConvert"(%arg0) : (i32) -> i64
    "spirv.ReturnValue"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

