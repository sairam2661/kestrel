module {
  func.func @index_to_size_to_index(%arg0: index) -> index {
    %0 = shape.index_to_size %arg0
    %1 = shape.size_to_index %0 : !shape.size
    return %1 : index
  }
}

