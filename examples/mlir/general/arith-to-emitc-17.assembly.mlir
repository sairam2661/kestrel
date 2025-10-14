module {
  func.func @arith_cmpf_olt(%arg0: f32, %arg1: f32) -> i1 {
    %0 = arith.cmpf olt, %arg0, %arg1 : f32
    return %0 : i1
  }
}

