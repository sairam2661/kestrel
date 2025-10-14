module {
  func.func @fpowi64(%arg0: f64, %arg1: i64) {
    %0 = math.fpowi %arg0, %arg1 : f64, i64
    return
  }
}

