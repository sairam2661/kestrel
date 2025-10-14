module {
  func.func @test_9_negative() -> f32 {
    %cst = arith.constant {tag = "zero"} 0.000000e+00 : f32
    %cst_0 = arith.constant {tag = "one"} 1.000000e+00 : f32
    return %cst_0 : f32
  }
}

