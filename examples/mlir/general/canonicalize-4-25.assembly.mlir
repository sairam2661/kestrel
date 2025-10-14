module {
  func.func @test_minimumf(%arg0: f32) -> (f32, f32, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0x7F800000 : f32
    %0 = arith.minimumf %cst, %arg0 : f32
    %1 = arith.minimumf %arg0, %arg0 : f32
    %2 = arith.minimumf %cst_0, %arg0 : f32
    return %0, %1, %2 : f32, f32, f32
  }
}

