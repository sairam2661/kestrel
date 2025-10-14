module {
  func.func @test_divf(%arg0: f64) -> (f64, f64) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %0 = arith.divf %arg0, %cst : f64
    %1 = arith.divf %cst, %cst_0 : f64
    return %0, %1 : f64, f64
  }
  func.func @test_divf1(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.negf %arg0 : f32
    %1 = arith.negf %arg1 : f32
    %2 = arith.divf %0, %1 : f32
    return %2 : f32
  }
}

