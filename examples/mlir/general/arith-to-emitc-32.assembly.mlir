module {
  func.func @arith_trunci(%arg0: i32) -> i8 {
    %0 = arith.trunci %arg0 : i32 to i8
    %1 = arith.trunci %arg0 : i32 to i1
    return %0 : i8
  }
}

