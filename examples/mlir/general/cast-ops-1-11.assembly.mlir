module {
  func.func @convert_f64_to_u32_scalar(%arg0: f64) -> i32 {
    %0 = spirv.ConvertFToU %arg0 : f64 to i32
    spirv.ReturnValue %0 : i32
  }
}

