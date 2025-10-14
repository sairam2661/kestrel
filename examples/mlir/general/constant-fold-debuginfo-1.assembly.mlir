module {
  func.func @materialize_different_dialect() -> (f32, f32) {
    %cst = arith.constant -1.000000e+00 : f32
    %0 = math.absf %cst : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    return %0, %cst_0 : f32, f32
  }
}

