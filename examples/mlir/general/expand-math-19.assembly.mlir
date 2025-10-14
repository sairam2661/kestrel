module {
  func.func @math_fpowi_scalar_zero(%arg0: f32) -> f32 {
    %c0_i64 = arith.constant 0 : i64
    %0 = math.fpowi %arg0, %c0_i64 : f32, i64
    return %0 : f32
  }
}

