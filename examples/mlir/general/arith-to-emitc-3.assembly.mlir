module {
  func.func @arith_integer_ops_signed_nsw(%arg0: i32, %arg1: i32) {
    %0 = arith.addi %arg0, %arg1 overflow<nsw> : i32
    %1 = arith.subi %arg0, %arg1 overflow<nsw> : i32
    %2 = arith.muli %arg0, %arg1 overflow<nsw> : i32
    return
  }
}

