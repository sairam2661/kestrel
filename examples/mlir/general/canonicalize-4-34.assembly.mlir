module {
  func.func @test_cmpf(%arg0: f32) -> (i1, i1, i1, i1) {
    %cst = arith.constant 0x7FFFFFFF : f32
    %0 = arith.cmpf olt, %cst, %arg0 : f32
    %1 = arith.cmpf olt, %arg0, %cst : f32
    %2 = arith.cmpf ugt, %cst, %arg0 : f32
    %3 = arith.cmpf ugt, %arg0, %cst : f32
    return %0, %1, %2, %3 : i1, i1, i1, i1
  }
}

