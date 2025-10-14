module {
  func.func @not(%arg0: i32) -> i32 {
    %0 = spirv.Not %arg0 : i32
    spirv.ReturnValue %0 : i32
  }
}

