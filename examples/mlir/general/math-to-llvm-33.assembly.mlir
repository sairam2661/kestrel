module {
  func.func @isnan_double(%arg0: f64) {
    %0 = math.isnan %arg0 : f64
    return
  }
}

