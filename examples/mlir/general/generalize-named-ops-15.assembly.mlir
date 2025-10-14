module {
  func.func @generalize_linalg_map(%arg0: memref<1x8x8x8xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    linalg.map outs(%arg0 : memref<1x8x8x8xf32>)
      () {
        linalg.yield %cst : f32
      }
    return
  }
}

