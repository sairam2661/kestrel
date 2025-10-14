module {
  func.func @bitcastBackAndForth(%arg0: i32) -> i32 {
    %0 = arith.bitcast %arg0 : i32 to f32
    %1 = arith.bitcast %0 : f32 to i32
    return %1 : i32
  }
}

