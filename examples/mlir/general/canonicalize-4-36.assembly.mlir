module {
  func.func @invalid_constant_FPtoUI() -> i32 {
    %cst = arith.constant -2.000000e+00 : f32
    %0 = arith.fptoui %cst : f32 to i32
    return %0 : i32
  }
}

