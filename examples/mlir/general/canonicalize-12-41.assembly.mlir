module {
  func.func @collapse_after_memref_cast_type_change_dynamic(%arg0: memref<1x1x1x?xi64>) -> memref<?x?xi64> {
    %cast = memref.cast %arg0 : memref<1x1x1x?xi64> to memref<1x1x?x?xi64>
    %collapse_shape = memref.collapse_shape %cast [[0, 1, 2], [3]] : memref<1x1x?x?xi64> into memref<?x?xi64>
    return %collapse_shape : memref<?x?xi64>
  }
}

