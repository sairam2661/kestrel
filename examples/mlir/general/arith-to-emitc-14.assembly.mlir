module {
  func.func @arith_cmpf_oeq(%arg0: f32, %arg1: f32) -> i1 {
    %0 = arith.cmpf oeq, %arg0, %arg1 : f32
    return %0 : i1
  }
}

