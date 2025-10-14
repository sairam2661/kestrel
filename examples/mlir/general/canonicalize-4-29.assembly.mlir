module {
  func.func @test_addf(%arg0: f32) -> (f32, f32, f32, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -0.000000e+00 : f32
    %cst_1 = arith.constant 1.000000e+00 : f32
    %0 = arith.addf %cst, %arg0 : f32
    %1 = arith.addf %arg0, %cst_0 : f32
    %2 = arith.addf %cst_0, %arg0 : f32
    %3 = arith.addf %cst_1, %cst_1 : f32
    return %0, %1, %2, %3 : f32, f32, f32, f32
  }
}

