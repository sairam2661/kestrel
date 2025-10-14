module {
  func.func @unsupported_result_integer(%arg0: i64) -> i64 {
    %0 = arith.extsi %arg0 : i64 to i128
    %1 = arith.muli %0, %0 : i128
    %2 = arith.trunci %1 : i128 to i64
    return %2 : i64
  }
}

