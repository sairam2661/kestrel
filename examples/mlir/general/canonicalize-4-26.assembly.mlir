module {
  func.func @test_maximumf(%arg0: f32) -> (f32, f32, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %0 = arith.maximumf %cst, %arg0 : f32
    %1 = arith.maximumf %arg0, %arg0 : f32
    %2 = arith.maximumf %cst_0, %arg0 : f32
    return %0, %1, %2 : f32, f32, f32
  }
}

