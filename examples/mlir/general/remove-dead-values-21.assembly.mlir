module {
  func.func @test_atomic_yield(%arg0: memref<10xf32>, %arg1: index) {
    %0 = memref.generic_atomic_rmw %arg0[%arg1] : memref<10xf32> {
    ^bb0(%arg2: f32):
      %cst = arith.constant 1.000000e+00 : f32
      memref.atomic_yield %cst : f32
    }
    return
  }
}

