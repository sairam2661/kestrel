module {
  func.func @convert_f_to_s_scalar(%arg0: f32) -> i32 {
    %0 = spirv.ConvertFToS %arg0 : f32 to i32
    spirv.ReturnValue %0 : i32
  }
}

