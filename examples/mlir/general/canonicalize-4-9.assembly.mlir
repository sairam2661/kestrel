module {
  func.func @bitcastSameType(%arg0: f32) -> f32 {
    %0 = arith.bitcast %arg0 : f32 to f32
    return %0 : f32
  }
}

