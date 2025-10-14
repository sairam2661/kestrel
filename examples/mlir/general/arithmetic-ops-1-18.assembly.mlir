module {
  func.func @imul_scalar(%arg0: i32) -> i32 {
    %0 = spirv.IMul %arg0, %arg0 : i32
    return %0 : i32
  }
}

