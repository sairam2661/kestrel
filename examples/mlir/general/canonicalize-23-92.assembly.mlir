module {
  func.func @fold_index_cast_on_index(%arg0: index) -> index {
    %0 = shape.size_to_index %arg0 : index
    return %0 : index
  }
}

