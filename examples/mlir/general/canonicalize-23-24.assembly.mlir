module {
  func.func @const_index_to_size_to_index() -> index {
    %c123 = arith.constant 123 : index
    %0 = shape.index_to_size %c123
    %1 = shape.size_to_index %0 : !shape.size
    return %1 : index
  }
}

