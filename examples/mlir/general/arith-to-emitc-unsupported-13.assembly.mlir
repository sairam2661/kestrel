module {
  func.func @arith_extsi_i1_to_i32(%arg0: i1) {
    %0 = arith.extsi %arg0 : i1 to i32
    return
  }
}

