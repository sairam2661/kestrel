module {
  func.func @rsqrt64(%arg0: f64) -> f64 {
    %0 = math.rsqrt %arg0 : f64
    return %0 : f64
  }
}

