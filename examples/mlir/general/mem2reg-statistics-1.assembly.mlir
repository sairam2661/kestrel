module {
  func.func @no_alloca() -> i32 {
    %c5_i32 = arith.constant 5 : i32
    return %c5_i32 : i32
  }
}

