"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i64, sym_name = "u_convert_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.UConvert"(%arg0) : (i32) -> i64
    "spirv.ReturnValue"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

