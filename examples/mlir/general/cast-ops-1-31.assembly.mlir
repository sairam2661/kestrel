module {
  func.func @u_convert_scalar(%arg0: i32) -> i64 {
    %0 = spirv.UConvert %arg0 : i32 to i64
    spirv.ReturnValue %0 : i64
  }
}

