module {
  func.func @arith_negf(%arg0: f32) -> f32 {
    %0 = arith.negf %arg0 : f32
    return %0 : f32
  }
}

