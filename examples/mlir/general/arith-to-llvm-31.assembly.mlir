module {
  func.func @ceildivsi(%arg0: i64, %arg1: i64) -> i64 {
    %0 = arith.ceildivsi %arg0, %arg1 : i64
    return %0 : i64
  }
  func.func @ceildivui(%arg0: i32) -> i32 {
    %0 = arith.ceildivui %arg0, %arg0 : i32
    return %0 : i32
  }
}

