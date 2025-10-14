module {
  func.func @fold_dynamic_size_collapse_shape_with_affine_load(%arg0: memref<?x6x32xf32>, %arg1: index, %arg2: index) -> f32 {
    %collapse_shape = memref.collapse_shape %arg0 [[0, 1], [2]] : memref<?x6x32xf32> into memref<?x32xf32>
    %0 = affine.load %collapse_shape[%arg1, %arg2] : memref<?x32xf32>
    return %0 : f32
  }
}

