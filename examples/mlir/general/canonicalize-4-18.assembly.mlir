module {
  func.func @bitcastPoisonItoFP() -> f32 {
    %0 = ub.poison : i32
    %1 = arith.bitcast %0 : i32 to f32
    return %1 : f32
  }
}

