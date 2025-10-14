module {
  func.func @collapse_after_memref_cast(%arg0: memref<?x512x1x?xf32>) -> memref<?x?xf32> {
    %cast = memref.cast %arg0 : memref<?x512x1x?xf32> to memref<?x?x?x?xf32>
    %collapse_shape = memref.collapse_shape %cast [[0], [1, 2, 3]] : memref<?x?x?x?xf32> into memref<?x?xf32>
    return %collapse_shape : memref<?x?xf32>
  }
}

