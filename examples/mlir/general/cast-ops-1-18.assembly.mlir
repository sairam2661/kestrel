module {
  func.func @convert_s32_to_bf16_scalar(%arg0: i32) -> bf16 {
    %0 = spirv.ConvertSToF %arg0 : i32 to bf16
    spirv.ReturnValue %0 : bf16
  }
}

