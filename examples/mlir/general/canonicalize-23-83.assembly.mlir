module {
  func.func @fold_add_size() -> !shape.size {
    %c2 = shape.const_size 2
    %c3 = shape.const_size 3
    %0 = shape.add %c2, %c3 : !shape.size, !shape.size -> !shape.size
    return %0 : !shape.size
  }
}

