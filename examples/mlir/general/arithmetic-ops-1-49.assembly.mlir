module {
  func.func @udiv_scalar(%arg0: i32) -> i32 {
    %0 = spirv.UDiv %arg0, %arg0 : i32
    return %0 : i32
  }
}

