module {
  func.func @convert_s_to_f_scalar(%arg0: i32) -> f32 {
    %0 = spirv.ConvertSToF %arg0 : i32 to f32
    spirv.ReturnValue %0 : f32
  }
}

