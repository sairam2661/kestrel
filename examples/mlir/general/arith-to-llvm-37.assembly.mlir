module {
  func.func @memref_bitcast(%arg0: memref<?xi16>) -> memref<?xbf16> {
    %0 = arith.bitcast %arg0 : memref<?xi16> to memref<?xbf16>
    return %0 : memref<?xbf16>
  }
}

