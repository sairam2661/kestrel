module {
  func.func @arith_index(%arg0: i32, %arg1: i32) {
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.addi %0, %1 : index
    %3 = arith.subi %0, %1 : index
    %4 = arith.muli %0, %1 : index
    return
  }
}

