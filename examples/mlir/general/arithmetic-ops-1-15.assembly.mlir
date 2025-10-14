module {
  func.func @fsub_scalar(%arg0: f32) -> f32 {
    %0 = spirv.FSub %arg0, %arg0 : f32
    return %0 : f32
  }
}

