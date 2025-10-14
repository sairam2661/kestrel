module {
  func.func @math_fpowi_even_scalar(%arg0: f32) -> f32 {
    %c2_i64 = arith.constant 2 : i64
    %0 = math.fpowi %arg0, %c2_i64 : f32, i64
    return %0 : f32
  }
}

