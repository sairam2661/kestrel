module {
  func.func @f(%arg0: !shape.shape, %arg1: !shape.shape) -> index {
    %0 = shape.cstr_eq %arg0, %arg1 : !shape.shape, !shape.shape
    %1 = shape.assuming %0 -> (index) {
      %2 = "test.source"() : () -> index
      shape.assuming_yield %2 : index
    }
    return %1 : index
  }
}

