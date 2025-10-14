module {
  func.func @isub_scalar(%arg0: i32) -> i32 {
    %0 = spirv.ISub %arg0, %arg0 : i32
    return %0 : i32
  }
}

