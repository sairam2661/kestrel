module {
  func.func @simple_and(%arg0: i1, %arg1: i32) -> (i1, i32) {
    %true = arith.constant true
    %c-1_i32 = arith.constant -1 : i32
    %c31_i32 = arith.constant 31 : i32
    %0 = arith.andi %arg0, %true : i1
    %1 = arith.andi %arg1, %c-1_i32 : i32
    %2 = arith.andi %1, %c31_i32 : i32
    return %0, %2 : i1, i32
  }
}

