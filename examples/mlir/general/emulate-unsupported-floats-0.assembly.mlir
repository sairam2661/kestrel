module {
  func.func @basic_expansion(%arg0: bf16) -> bf16 {
    %cst = arith.constant 1.000000e+00 : bf16
    %0 = arith.addf %arg0, %cst : bf16
    return %0 : bf16
  }
}

