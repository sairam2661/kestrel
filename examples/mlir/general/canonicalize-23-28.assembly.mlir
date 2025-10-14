module {
  func.func @nonfoldable_num_elements(%arg0: !shape.shape) -> !shape.size {
    %0 = shape.num_elements %arg0 : !shape.shape -> !shape.size
    return %0 : !shape.size
  }
}

