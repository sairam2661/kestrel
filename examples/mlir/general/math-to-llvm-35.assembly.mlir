module {
  func.func @isfinite_double(%arg0: f64) {
    %0 = math.isfinite %arg0 : f64
    return
  }
}

