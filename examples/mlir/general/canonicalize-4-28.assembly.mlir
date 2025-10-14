module {
  func.func @test_maxnumf(%arg0: f32) -> (f32, f32, f32, f32) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 0x7FC00000 : f32
    %0 = arith.maxnumf %cst, %arg0 : f32
    %1 = arith.maxnumf %arg0, %arg0 : f32
    %2 = arith.maxnumf %cst_0, %arg0 : f32
    %3 = arith.maxnumf %cst_1, %arg0 : f32
    return %0, %1, %2, %3 : f32, f32, f32, f32
  }
}

