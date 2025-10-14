module {
  func.func @atomic_rmw_no_conversion(%arg0: memref<10xf32>, %arg1: f32, %arg2: index) -> (f32, f32) {
    %0 = memref.atomic_rmw addf %arg1, %arg0[%arg2] : (f32, memref<10xf32>) -> f32
    %1 = memref.atomic_rmw maximumf %arg1, %arg0[%arg2] : (f32, memref<10xf32>) -> f32
    return %0, %1 : f32, f32
  }
}

