module {
  func.func @f_convert_bf16_to_f32_scalar(%arg0: bf16) -> f32 {
    %0 = spirv.FConvert %arg0 : bf16 to f32
    spirv.ReturnValue %0 : f32
  }
}

