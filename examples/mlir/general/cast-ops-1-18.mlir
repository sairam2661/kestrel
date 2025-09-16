"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> bf16, sym_name = "convert_s32_to_bf16_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.ConvertSToF"(%arg0) : (i32) -> bf16
    "spirv.ReturnValue"(%0) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

