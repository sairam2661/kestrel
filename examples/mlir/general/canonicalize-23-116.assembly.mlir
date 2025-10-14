module {
  func.func @min_same_arg(%arg0: !shape.shape) -> !shape.shape {
    %0 = shape.min %arg0, %arg0 : !shape.shape, !shape.shape -> !shape.shape
    return %0 : !shape.shape
  }
}

