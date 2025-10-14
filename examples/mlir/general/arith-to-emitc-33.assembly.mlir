module {
  func.func @arith_trunci_to_i1(%arg0: i32) -> i1 {
    %0 = arith.trunci %arg0 : i32 to i1
    return %0 : i1
  }
}

