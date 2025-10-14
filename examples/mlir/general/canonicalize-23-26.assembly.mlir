module {
  func.func @nonfoldable_index_to_size(%arg0: index) -> !shape.size {
    %0 = shape.index_to_size %arg0
    return %0 : !shape.size
  }
}

