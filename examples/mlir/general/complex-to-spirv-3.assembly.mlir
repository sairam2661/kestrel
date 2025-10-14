module {
  func.func @complex_const() -> complex<f32> {
    %cst = complex.constant [0x7FC00000 : f32, 0.000000e+00 : f32] : complex<f32>
    return %cst : complex<f32>
  }
}

