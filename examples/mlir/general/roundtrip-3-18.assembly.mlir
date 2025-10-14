module {
  func.func @map_unary_memref(%arg0: memref<64xf32>, %arg1: memref<64xf32>) {
    linalg.map { math.absf } ins(%arg0 : memref<64xf32>) outs(%arg1 : memref<64xf32>)
    return
  }
}

