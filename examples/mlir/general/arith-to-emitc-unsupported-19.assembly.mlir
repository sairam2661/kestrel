module {
  func.func @arith_truncf(%arg0: f64) -> f32 {
    %0 = arith.truncf %arg0 to_nearest_away : f64 to f32
    return %0 : f32
  }
}

