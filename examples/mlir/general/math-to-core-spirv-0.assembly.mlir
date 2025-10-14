module {
  func.func @copy_sign_scalar(%arg0: f32, %arg1: f32) -> f32 {
    %0 = math.copysign %arg0, %arg1 : f32
    return %0 : f32
  }
}

