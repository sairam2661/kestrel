module {
  func.func @collapse_shape_identity_fold(%arg0: memref<5xi8>) -> memref<5xi8> {
    %collapse_shape = memref.collapse_shape %arg0 [[0]] : memref<5xi8> into memref<5xi8>
    return %collapse_shape : memref<5xi8>
  }
}

