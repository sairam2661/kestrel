module {
  func.func @memref_reshape(%arg0: memref<*xf32>, %arg1: memref<3xi32>) -> memref<?x?x8xf32> {
    %reshape = memref.reshape %arg0(%arg1) : (memref<*xf32>, memref<3xi32>) -> memref<?x?x8xf32>
    return %reshape : memref<?x?x8xf32>
  }
}

