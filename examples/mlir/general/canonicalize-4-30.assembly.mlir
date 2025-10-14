module {
  func.func @test_subf(%arg0: f16) -> (f16, f16, f16) {
    %cst = arith.constant 0.000000e+00 : f16
    %cst_0 = arith.constant -0.000000e+00 : f16
    %cst_1 = arith.constant 1.000000e+00 : f16
    %0 = arith.subf %arg0, %cst : f16
    %1 = arith.subf %arg0, %cst_0 : f16
    %2 = arith.subf %cst, %cst_1 : f16
    return %0, %1, %2 : f16, f16, f16
  }
}

