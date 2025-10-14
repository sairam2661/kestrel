module {
  func.func @snegate_scalar(%arg0: i32) -> i32 {
    %0 = spirv.SNegate %arg0 : i32
    return %0 : i32
  }
}

