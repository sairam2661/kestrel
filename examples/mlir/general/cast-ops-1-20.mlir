"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> f32, sym_name = "convert_u64_to_f32_scalar"}> ({
  ^bb0(%arg0: i64):
    %0 = "spirv.ConvertUToF"(%arg0) : (i64) -> f32
    "spirv.ReturnValue"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

