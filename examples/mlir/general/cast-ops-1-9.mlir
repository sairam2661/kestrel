"builtin.module"() ({
  "func.func"() <{function_type = (bf16) -> i32, sym_name = "convert_bf16_to_s32_scalar"}> ({
  ^bb0(%arg0: bf16):
    %0 = "spirv.ConvertFToS"(%arg0) : (bf16) -> i32
    "spirv.ReturnValue"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

