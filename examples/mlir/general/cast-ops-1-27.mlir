"builtin.module"() ({
  "func.func"() <{function_type = (bf16) -> f32, sym_name = "f_convert_bf16_to_f32_scalar"}> ({
  ^bb0(%arg0: bf16):
    %0 = "spirv.FConvert"(%arg0) : (bf16) -> f32
    "spirv.ReturnValue"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

