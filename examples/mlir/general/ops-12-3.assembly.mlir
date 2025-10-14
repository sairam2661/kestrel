module {
  func.func @atomic_rmw(%arg0: memref<10xf32>, %arg1: f32, %arg2: index) {
    %0 = memref.atomic_rmw addf %arg1, %arg0[%arg2] : (f32, memref<10xf32>) -> f32
    return
  }
  func.func @generic_atomic_rmw(%arg0: memref<1x2xf32>, %arg1: index, %arg2: index) {
    %0 = memref.generic_atomic_rmw %arg0[%arg1, %arg2] : memref<1x2xf32> {
    ^bb0(%arg3: f32):
      %cst = arith.constant 1.000000e+00 : f32
      %1 = arith.addf %cst, %arg3 : f32
      memref.atomic_yield %1 : f32
    } {index_attr = 8 : index}
    return
  }
}

