module {
  func.func @arith_shli_i1(%arg0: i1, %arg1: i1) {
    %0 = arith.shli %arg0, %arg1 : i1
    return
  }
}

