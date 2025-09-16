"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> bf16, sym_name = "convert_u32_to_bf16_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.ConvertUToF"(%arg0) : (i32) -> bf16
    "spirv.ReturnValue"(%0) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

