module {
  func.func @different_ops() -> (i32, i32) {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    return %c0_i32, %c1_i32 : i32, i32
  }
}

