module {
  func.func @fold_and_merge() -> (i32, i32) {
    %c1_i32 = arith.constant 1 : i32
    %c5_i32 = arith.constant 5 : i32
    %0 = arith.addi %c1_i32, %c5_i32 : i32
    %c6_i32 = arith.constant 6 : i32
    return %0, %c6_i32 : i32, i32
  }
}

