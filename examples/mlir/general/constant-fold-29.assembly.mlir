module {
  func.func @muli() -> i32 {
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.muli %c4_i32, %c2_i32 : i32
    return %0 : i32
  }
}

