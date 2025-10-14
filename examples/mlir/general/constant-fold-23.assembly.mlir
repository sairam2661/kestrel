module {
  func.func @simple_arith.floordivsi() -> (i32, i32, i32, i32, i32) {
    %c0_i32 = arith.constant 0 : i32
    %c7_i32 = arith.constant 7 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = arith.floordivsi %c7_i32, %c2_i32 : i32
    %c-2_i32 = arith.constant -2 : i32
    %1 = arith.floordivsi %c7_i32, %c-2_i32 : i32
    %c-9_i32 = arith.constant -9 : i32
    %2 = arith.floordivsi %c-9_i32, %c2_i32 : i32
    %c-13_i32 = arith.constant -13 : i32
    %3 = arith.floordivsi %c-13_i32, %c-2_i32 : i32
    %4 = arith.floordivsi %c7_i32, %c0_i32 : i32
    return %0, %1, %2, %3, %4 : i32, i32, i32, i32, i32
  }
}

