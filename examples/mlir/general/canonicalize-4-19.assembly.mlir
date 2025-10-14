module {
  func.func @bitcastPoisonFPtoI() -> i32 {
    %0 = ub.poison : f32
    %1 = arith.bitcast %0 : f32 to i32
    return %1 : i32
  }
}

