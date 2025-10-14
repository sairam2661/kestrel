module {
  func.func @simple_divi_signed() -> (i32, i32, i32) {
    %c0_i32 = arith.constant 0 : i32
    %c6_i32 = arith.constant 6 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.divsi %c6_i32, %c2_i32 : i32
    %c-2_i32 = arith.constant -2 : i32
    %1 = arith.divsi %c6_i32, %c-2_i32 : i32
    %2 = arith.divsi %c6_i32, %c0_i32 : i32
    return %0, %1, %2 : i32, i32, i32
  }
}

