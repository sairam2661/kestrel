module {
  func.func @is_broadcastable_on_duplicate_shapes(%arg0: !shape.shape, %arg1: !shape.shape) -> i1 {
    %0 = shape.is_broadcastable %arg0, %arg1, %arg0, %arg0, %arg0, %arg1 : !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape
    return %0 : i1
  }
}

