module {
  func.func @simple_arith.remsi(%arg0: i32) -> (i32, i32, i32) {
    %c5_i32 = arith.constant 5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c-2_i32 = arith.constant -2 : i32
    %0 = arith.remsi %c5_i32, %c2_i32 : i32
    %1 = arith.remsi %c5_i32, %c-2_i32 : i32
    %2 = arith.remsi %arg0, %c1_i32 : i32
    return %0, %1, %2 : i32, i32, i32
  }
}

