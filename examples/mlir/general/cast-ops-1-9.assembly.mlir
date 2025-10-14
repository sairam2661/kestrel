module {
  func.func @convert_bf16_to_s32_scalar(%arg0: bf16) -> i32 {
    %0 = spirv.ConvertFToS %arg0 : bf16 to i32
    spirv.ReturnValue %0 : i32
  }
}

