module {
  func.func @smod_scalar(%arg0: i32) -> i32 {
    %0 = spirv.SMod %arg0, %arg0 : i32
    return %0 : i32
  }
}

