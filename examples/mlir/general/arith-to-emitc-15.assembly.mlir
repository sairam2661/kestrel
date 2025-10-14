module {
  func.func @arith_cmpf_ogt(%arg0: f32, %arg1: f32) -> i1 {
    %0 = arith.cmpf ogt, %arg0, %arg1 : f32
    return %0 : i1
  }
}

