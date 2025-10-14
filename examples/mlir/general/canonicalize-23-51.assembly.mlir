module {
  func.func @f(%arg0: !shape.shape, %arg1: !shape.shape) -> !shape.shape {
    %0 = shape.any %arg0, %arg1 : !shape.shape, !shape.shape -> !shape.shape
    return %0 : !shape.shape
  }
}

