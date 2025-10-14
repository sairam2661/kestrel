module {
  func.func @roundeven64(%arg0: f64) -> f64 {
    %0 = math.roundeven %arg0 : f64
    return %0 : f64
  }
}

