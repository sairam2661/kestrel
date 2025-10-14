module {
  func.func @compose_collapse_of_collapse(%arg0: memref<?x?x?x?x?xf32>) -> memref<?x?xf32> {
    %collapse_shape = memref.collapse_shape %arg0 [[0, 1], [2], [3, 4]] : memref<?x?x?x?x?xf32> into memref<?x?x?xf32>
    %collapse_shape_0 = memref.collapse_shape %collapse_shape [[0, 1], [2]] : memref<?x?x?xf32> into memref<?x?xf32>
    return %collapse_shape_0 : memref<?x?xf32>
  }
}

