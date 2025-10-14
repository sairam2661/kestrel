module {
  func.func @parallel(%arg0: memref<100x100xf32>, %arg1: index) {
    affine.parallel (%arg2, %arg3) = (0, 0) to (symbol(%arg1), 100) step (10, 10) {
      %0:2 = affine.parallel (%arg4, %arg5) = (%arg2, %arg3) to (%arg2 + 10, %arg3 + 10) reduce ("minimumf", "maximumf") -> (f32, f32) {
        %1 = affine.load %arg0[%arg2 * 2, %arg3 + %arg5] : memref<100x100xf32>
        affine.yield %1, %1 : f32, f32
      }
    }
    return
  }
}

