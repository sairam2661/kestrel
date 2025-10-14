module {
  func.func @const_size_to_index() -> index {
    %c123 = shape.const_size 123
    %0 = shape.size_to_index %c123 : !shape.size
    return %0 : index
  }
}

