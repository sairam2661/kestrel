module {
  func.func @atomicrmw_cast_fold(%arg0: f32, %arg1: memref<4xf32>, %arg2: index) {
    %cast = memref.cast %arg1 : memref<4xf32> to memref<?xf32>
    %0 = memref.atomic_rmw addf %arg0, %cast[%arg2] : (f32, memref<?xf32>) -> f32
    return
  }
}

