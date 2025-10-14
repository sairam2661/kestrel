module {
  func.func @merge_constants() -> (index, index, index, index) {
    %c42 = arith.constant 42 : index
    %c42_0 = arith.constant 42 : index
    %c42_1 = arith.constant 42 : index
    %c42_2 = arith.constant 42 : index
    return %c42, %c42_0, %c42_1, %c42_2 : index, index, index, index
  }
}

