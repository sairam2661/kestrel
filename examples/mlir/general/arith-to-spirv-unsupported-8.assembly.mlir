module {
  func.func @unsupported_constant_f64_0() {
    %cst = arith.constant 0.000000e+00 : f64
    return
  }
}

