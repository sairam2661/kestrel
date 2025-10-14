module {
  func.func @convert_bf16_to_u32_scalar(%arg0: bf16) -> i32 {
    %0 = spirv.ConvertFToU %arg0 : bf16 to i32
    spirv.ReturnValue %0 : i32
  }
}

