module {
  func.func @convert_u64_to_f32_scalar(%arg0: i64) -> f32 {
    %0 = spirv.ConvertUToF %arg0 : i64 to f32
    spirv.ReturnValue %0 : f32
  }
}

