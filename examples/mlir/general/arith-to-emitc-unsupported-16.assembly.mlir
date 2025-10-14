module {
  func.func @arith_shrui_i1(%arg0: i1, %arg1: i1) {
    %0 = arith.shrui %arg0, %arg1 : i1
    return
  }
}

