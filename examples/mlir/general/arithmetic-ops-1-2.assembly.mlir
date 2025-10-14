module {
  func.func @fdiv_scalar(%arg0: f32) -> f32 {
    %0 = spirv.FDiv %arg0, %arg0 : f32
    return %0 : f32
  }
}

