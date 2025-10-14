module {
  func.func @fold_const_size() -> !shape.shape {
    %c3 = shape.const_size 3
    %c5 = shape.const_size 5
    %0 = shape.from_extents %c3, %c5 : !shape.size, !shape.size
    return %0 : !shape.shape
  }
}

