module {
  func.func @arith_index_cast(%arg0: i32) -> i32 {
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %0 : index to i32
    %2 = arith.index_cast %0 : index to i1
    return %1 : i32
  }
}

