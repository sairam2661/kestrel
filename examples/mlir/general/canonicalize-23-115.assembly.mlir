module {
  func.func @max_same_arg(%arg0: !shape.shape) -> !shape.shape {
    %0 = shape.max %arg0, %arg0 : !shape.shape, !shape.shape -> !shape.shape
    return %0 : !shape.shape
  }
}

