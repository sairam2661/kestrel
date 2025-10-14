module {
  func.func @fold_div_index() -> index {
    %c10 = arith.constant 10 : index
    %c4 = arith.constant 4 : index
    %0 = shape.div %c10, %c4 : index, index -> index
    return %0 : index
  }
}

