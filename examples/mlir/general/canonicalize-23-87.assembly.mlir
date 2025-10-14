module {
  func.func @fold_div_size() -> !shape.size {
    %c10 = shape.const_size 10
    %c3 = shape.const_size 3
    %0 = shape.div %c10, %c3 : !shape.size, !shape.size -> !shape.size
    return %0 : !shape.size
  }
}

