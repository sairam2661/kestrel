module {
  func.func @f_convert_scalar(%arg0: f32) -> f64 {
    %0 = spirv.FConvert %arg0 : f32 to f64
    spirv.ReturnValue %0 : f64
  }
}

