module {
  func.func @chained(%arg0: bf16, %arg1: bf16, %arg2: bf16) -> i1 {
    %0 = arith.addf %arg0, %arg1 : bf16
    %1 = arith.mulf %0, %arg2 : bf16
    %2 = arith.cmpf ole, %0, %1 : bf16
    return %2 : i1
  }
}

