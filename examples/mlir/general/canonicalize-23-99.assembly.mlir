module {
  func.func @cstr_broadcastable_on_duplicate_shapes(%arg0: !shape.shape, %arg1: !shape.shape) -> !shape.witness {
    %0 = shape.cstr_broadcastable %arg0, %arg1, %arg0, %arg0, %arg0, %arg1 : !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape, !shape.shape
    return %0 : !shape.witness
  }
}

