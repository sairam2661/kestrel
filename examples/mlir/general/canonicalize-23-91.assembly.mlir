module {
  func.func @fold_div_mixed() -> !shape.size {
    %c12 = shape.const_size 12
    %c3 = arith.constant 3 : index
    %0 = shape.div %c12, %c3 : !shape.size, index -> !shape.size
    return %0 : !shape.size
  }
}

