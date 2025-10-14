module {
  func.func @xorxor0(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.xori %arg0, %arg1 : i32
    %1 = arith.xori %0, %arg1 : i32
    return %1 : i32
  }
}

