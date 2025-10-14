module {
  func.func @math_fpowi_to_powf_scalar(%arg0: f32, %arg1: i64) -> f32 {
    %0 = math.fpowi %arg0, %arg1 : f32, i64
    return %0 : f32
  }
}

