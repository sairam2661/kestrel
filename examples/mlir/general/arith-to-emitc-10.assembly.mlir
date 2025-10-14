module {
  func.func @arith_shift_left_index(%arg0: i32) {
    %c42 = arith.constant 42 : index
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.shli %c42, %0 : index
    return
  }
}

