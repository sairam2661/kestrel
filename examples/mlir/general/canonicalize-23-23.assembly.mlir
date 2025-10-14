module {
  func.func @const_index_to_size() -> !shape.size {
    %c123 = arith.constant 123 : index
    %0 = shape.index_to_size %c123
    return %0 : !shape.size
  }
}

