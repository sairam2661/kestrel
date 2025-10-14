module {
  func.func @bitcastConstantItoFP() -> f32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.bitcast %c0_i32 : i32 to f32
    return %0 : f32
  }
}

