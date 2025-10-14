module {
  func.func @test_negf() -> f32 {
    %cst = arith.constant 2.000000e+00 : f32
    %0 = arith.negf %cst : f32
    return %0 : f32
  }
  func.func @test_negf1(%arg0: f32) -> f32 {
    %0 = arith.negf %arg0 : f32
    %1 = arith.negf %0 : f32
    return %1 : f32
  }
}

