module {
  func.func @srem_scalar(%arg0: i32) -> i32 {
    %0 = spirv.SRem %arg0, %arg0 : i32
    return %0 : i32
  }
}

