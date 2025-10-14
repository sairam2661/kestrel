module {
  func.func @bitreverse(%arg0: i32) -> i32 {
    %0 = spirv.BitReverse %arg0 : i32
    spirv.ReturnValue %0 : i32
  }
}

