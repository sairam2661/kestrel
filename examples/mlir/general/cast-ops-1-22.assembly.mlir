module {
  func.func @convert_u32_to_bf16_scalar(%arg0: i32) -> bf16 {
    %0 = spirv.ConvertUToF %arg0 : i32 to bf16
    spirv.ReturnValue %0 : bf16
  }
}

