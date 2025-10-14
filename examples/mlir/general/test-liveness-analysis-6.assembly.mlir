module {
  func.func @test_5_type_2() -> f32 {
    %cst = arith.constant {tag = "zero"} 0.000000e+00 : f32
    return %cst : f32
  }
}

