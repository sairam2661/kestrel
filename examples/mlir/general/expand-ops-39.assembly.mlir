module {
  func.func @minsi(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.minsi %arg0, %arg1 : i32
    return %0 : i32
  }
}

