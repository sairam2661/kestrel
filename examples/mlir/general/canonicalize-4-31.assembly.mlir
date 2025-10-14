module {
  func.func @test_mulf(%arg0: f32) -> (f32, f32, f32, f32) {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 2.000000e+00 : f32
    %0 = arith.mulf %cst_0, %arg0 : f32
    %1 = arith.mulf %arg0, %cst : f32
    %2 = arith.mulf %cst, %arg0 : f32
    %3 = arith.mulf %cst_0, %cst_0 : f32
    return %0, %1, %2, %3 : f32, f32, f32, f32
  }
  func.func @test_mulf1(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.negf %arg0 : f32
    %1 = arith.negf %arg1 : f32
    %2 = arith.mulf %0, %1 : f32
    return %2 : f32
  }
}

