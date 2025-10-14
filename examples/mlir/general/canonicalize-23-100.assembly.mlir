module {
  func.func @broadcast_on_same_shape(%arg0: !shape.shape) -> !shape.shape {
    %0 = shape.broadcast %arg0, %arg0, %arg0 : !shape.shape, !shape.shape, !shape.shape -> !shape.shape
    return %0 : !shape.shape
  }
}

