module {
  func.func @fmaf_func(%arg0: f64, %arg1: f64, %arg2: f64) -> f64 {
    %0 = math.fma %arg0, %arg1, %arg2 : f64
    return %0 : f64
  }
}

