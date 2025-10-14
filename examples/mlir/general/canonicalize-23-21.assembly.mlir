module {
  func.func @no_fold(%arg0: index) -> !shape.shape {
    %c3 = arith.constant 3 : index
    %0 = shape.from_extents %c3, %arg0 : index, index
    return %0 : !shape.shape
  }
}

