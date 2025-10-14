module {
  func.func @convert_f64_to_s32_scalar(%arg0: f64) -> i32 {
    %0 = spirv.ConvertFToS %arg0 : f64 to i32
    spirv.ReturnValue %0 : i32
  }
}

