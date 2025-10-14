module {
  func.func nested @nested(%arg0: i32) -> i32 {
    return %arg0 : i32
  }
  func.func @simple_nested() -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = call @nested(%c1_i32) : (i32) -> i32
    return %0 : i32
  }
}

