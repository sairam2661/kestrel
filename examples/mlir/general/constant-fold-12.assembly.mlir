module {
  func.func @simple_subf() -> f32 {
    %cst = arith.constant 4.500000e+00 : f32
    %cst_0 = arith.constant 1.500000e+00 : f32
    %0 = arith.subf %cst, %cst_0 : f32
    return %0 : f32
  }
}

