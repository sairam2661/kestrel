module {
  func.func @arith_cmpf_ult(%arg0: f32, %arg1: f32) -> i1 {
    %0 = arith.cmpf ult, %arg0, %arg1 : f32
    return %0 : i1
  }
}

