module {
  func.func @ceildivi(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.ceildivsi %arg0, %arg1 : i32
    return %0 : i32
  }
}

