module {
  func.func private @private(%arg0: i32) -> i32 {
    return %arg0 : i32
  }
  func.func @simple_private() -> i32 {
    %c1_i32 = arith.constant 1 : i32
    %0 = call @private(%c1_i32) : (i32) -> i32
    return %0 : i32
  }
}

