module {
  func.func @arith_shift_right(%arg0: i32, %arg1: i32) {
    %0 = arith.shrui %arg0, %arg1 : i32
    %1 = arith.shrsi %arg0, %arg1 : i32
    return
  }
}

