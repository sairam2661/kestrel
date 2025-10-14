module {
  func.func @bitcastConstantFPtoFP() -> f16 {
    %cst = arith.constant 0.000000e+00 : bf16
    %0 = arith.bitcast %cst : bf16 to f16
    return %0 : f16
  }
}

