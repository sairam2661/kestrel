module {
  func.func @fold_static_stride_subview_with_affine_load_store_collapse_shape(%arg0: memref<2x6x32xf32>, %arg1: index, %arg2: index) -> f32 {
    %collapse_shape = memref.collapse_shape %arg0 [[0, 1], [2]] : memref<2x6x32xf32> into memref<12x32xf32>
    %0 = affine.load %collapse_shape[%arg1, %arg2] : memref<12x32xf32>
    return %0 : f32
  }
}

