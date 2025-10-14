module {
  func.func @bool(%arg0: i1, %arg1: i1) {
    %0 = arith.addi %arg0, %arg1 : i1
    return
  }
}

