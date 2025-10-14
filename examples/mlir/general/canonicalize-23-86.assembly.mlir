module {
  func.func @fold_mul_mixed() -> !shape.size {
    %c2 = shape.const_size 2
    %c3 = arith.constant 3 : index
    %0 = shape.mul %c2, %c3 : !shape.size, index -> !shape.size
    return %0 : !shape.size
  }
}

