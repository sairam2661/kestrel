module {
  func.func @fold_div_index_neg_lhs() -> index {
    %c-10 = arith.constant -10 : index
    %c4 = arith.constant 4 : index
    %0 = shape.div %c-10, %c4 : index, index -> index
    return %0 : index
  }
}

