module {
  func.func @fold_trunci(%arg0: i1) -> i2 {
    %0 = arith.extui %arg0 : i1 to i8
    %1 = arith.trunci %0 : i8 to i2
    return %1 : i2
  }
}

