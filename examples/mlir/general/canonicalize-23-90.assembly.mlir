module {
  func.func @fold_div_index_neg_rhs() -> index {
    %c10 = arith.constant 10 : index
    %c-4 = arith.constant -4 : index
    %0 = shape.div %c10, %c-4 : index, index -> index
    return %0 : index
  }
}

