module {
  func.func @arith_shift_left(%arg0: i32, %arg1: i32) {
    %0 = arith.shli %arg0, %arg1 : i32
    return
  }
}

