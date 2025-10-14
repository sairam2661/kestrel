module {
  func.func @simple_arith.ceildivui() -> (i32, i32, i32, i32, i32) {
    %c0_i32 = arith.constant 0 : i32
    %c7_i32 = arith.constant 7 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.ceildivui %c7_i32, %c2_i32 : i32
    %c-2_i32 = arith.constant -2 : i32
    %1 = arith.ceildivui %c7_i32, %c-2_i32 : i32
    %c-8_i32 = arith.constant -8 : i32
    %2 = arith.ceildivui %c-8_i32, %c2_i32 : i32
    %c-15_i32 = arith.constant -15 : i32
    %3 = arith.ceildivui %c-15_i32, %c-2_i32 : i32
    %4 = arith.ceildivui %c7_i32, %c0_i32 : i32
    return %0, %1, %2, %3, %4 : i32, i32, i32, i32, i32
  }
}

