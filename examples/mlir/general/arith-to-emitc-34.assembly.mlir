module {
  func.func @arith_extsi(%arg0: i32) {
    %0 = arith.extsi %arg0 : i32 to i64
    return
  }
}

