module {
  func.func @is_broadcastable_on_same_shape(%arg0: !shape.shape) -> i1 {
    %0 = shape.is_broadcastable %arg0, %arg0, %arg0 : !shape.shape, !shape.shape, !shape.shape
    return %0 : i1
  }
}

