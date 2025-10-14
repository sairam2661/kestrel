module {
  func.func @nonfoldable_size_to_index(%arg0: !shape.size) -> index {
    %0 = shape.size_to_index %arg0 : !shape.size
    return %0 : index
  }
}

