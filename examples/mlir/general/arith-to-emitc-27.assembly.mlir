module {
  func.func @arith_cmpf_uno(%arg0: f32, %arg1: f32) -> i1 {
    %0 = arith.cmpf uno, %arg0, %arg1 : f32
    return %0 : i1
  }
}

