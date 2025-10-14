module {
  func.func @arith_shrsi_i1(%arg0: i1, %arg1: i1) {
    %0 = arith.shrsi %arg0, %arg1 : i1
    return
  }
}

