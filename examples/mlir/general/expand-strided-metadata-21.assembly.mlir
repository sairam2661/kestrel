module {
  func.func @simplify_collapse(%arg0: memref<?x?x4x?x6x7xi32>) -> memref<?x?x42xi32> {
    %collapse_shape = memref.collapse_shape %arg0 [[0], [1, 2, 3], [4, 5]] : memref<?x?x4x?x6x7xi32> into memref<?x?x42xi32>
    return %collapse_shape : memref<?x?x42xi32>
  }
}

