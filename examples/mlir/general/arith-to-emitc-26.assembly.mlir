module {
  func.func @arith_cmpf_une(%arg0: f32, %arg1: f32) -> i1 {
    %0 = arith.cmpf une, %arg0, %arg1 : f32
    return %0 : i1
  }
}

