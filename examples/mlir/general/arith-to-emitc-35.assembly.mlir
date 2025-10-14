module {
  func.func @arith_extui(%arg0: i32) {
    %0 = arith.extui %arg0 : i32 to i64
    return
  }
}

