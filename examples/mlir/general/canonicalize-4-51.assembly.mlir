module {
  func.func @xorxor3(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.xori %arg1, %arg0 : i32
    %1 = arith.xori %arg1, %0 : i32
    return %1 : i32
  }
}

