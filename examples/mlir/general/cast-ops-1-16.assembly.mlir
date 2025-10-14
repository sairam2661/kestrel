module {
  func.func @convert_s64_to_f32_scalar(%arg0: i64) -> f32 {
    %0 = spirv.ConvertSToF %arg0 : i64 to f32
    spirv.ReturnValue %0 : f32
  }
}

