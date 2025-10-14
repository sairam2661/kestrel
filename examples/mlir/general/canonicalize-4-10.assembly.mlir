module {
  func.func @bitcastConstantFPtoI() -> i32 {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = arith.bitcast %cst : f32 to i32
    return %0 : i32
  }
}

