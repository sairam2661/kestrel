module {
  func.func @size_to_index_to_size(%arg0: !shape.size) -> !shape.size {
    %0 = shape.size_to_index %arg0 : !shape.size
    %1 = shape.index_to_size %0
    return %1 : !shape.size
  }
}

