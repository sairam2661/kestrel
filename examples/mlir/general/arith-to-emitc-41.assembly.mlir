module {
  func.func @arith_truncf(%arg0: f64) -> f16 {
    %0 = arith.truncf %arg0 : f64 to f32
    %1 = arith.truncf %0 : f32 to f16
    return %1 : f16
  }
}

