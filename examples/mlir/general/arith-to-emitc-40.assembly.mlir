module {
  func.func @arith_extf(%arg0: f16) -> f64 {
    %0 = arith.extf %arg0 : f16 to f32
    %1 = arith.extf %0 : f32 to f64
    return %1 : f64
  }
}

