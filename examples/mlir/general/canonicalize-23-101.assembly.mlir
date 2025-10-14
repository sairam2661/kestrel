module {
  func.func @broadcast_on_duplicate_shapes(%arg0: !shape.shape, %arg1: !shape.shape) -> !shape.shape {
    %0 = shape.broadcast %arg0, %arg1, %arg0, %arg0, %arg0, %arg1 : !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape -> !shape.shape
    return %0 : !shape.shape
  }
}

