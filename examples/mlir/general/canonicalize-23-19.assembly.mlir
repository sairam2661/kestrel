module {
  func.func @f() -> !shape.shape {
    %c3 = arith.constant 3 : index
    %c5 = arith.constant 5 : index
    %c11 = arith.constant 11 : index
    %0 = shape.from_extents %c3, %c5, %c11 : index, index, index
    return %0 : !shape.shape
  }
}

