module {
  func.func @ceilf_func(%arg0: f64) -> f64 {
    %0 = math.ceil %arg0 : f64
    return %0 : f64
  }
}

