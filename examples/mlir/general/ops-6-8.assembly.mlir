module {
  func.func @parallel_min_max(%arg0: index, %arg1: index, %arg2: index, %arg3: index) {
    affine.parallel (%arg4, %arg5, %arg6) = (max(%arg0, %arg1), %arg1, max(%arg0, %arg2)) to (%arg2, min(%arg2, %arg3), %arg1) {
    }
    return
  }
}

