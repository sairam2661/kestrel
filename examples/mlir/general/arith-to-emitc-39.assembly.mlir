module {
  func.func @arith_divui_remui(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.divui %arg0, %arg1 : i32
    %1 = arith.remui %arg0, %arg1 : i32
    return %0 : i32
  }
}

