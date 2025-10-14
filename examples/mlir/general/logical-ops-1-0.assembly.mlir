module {
  func.func @iequal_scalar(%arg0: i32, %arg1: i32) -> i1 {
    %0 = spirv.IEqual %arg0, %arg1 : i32
    return %0 : i1
  }
}

