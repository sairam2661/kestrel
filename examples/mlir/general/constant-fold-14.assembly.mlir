module {
  func.func @simple_subi(%arg0: i32) -> (i32, i32) {
    %c4_i32 = arith.constant 4 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.subi %c4_i32, %c1_i32 : i32
    %1 = arith.subi %arg0, %c0_i32 : i32
    return %0, %1 : i32, i32
  }
}

