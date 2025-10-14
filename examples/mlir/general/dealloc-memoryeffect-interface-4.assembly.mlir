module {
  func.func @dealloc_existing_clones(%arg0: memref<?x?xf64>, %arg1: memref<?x?xf64>) -> memref<?x?xf64> {
    %0 = bufferization.clone %arg0 : memref<?x?xf64> to memref<?x?xf64>
    %1 = bufferization.clone %arg1 : memref<?x?xf64> to memref<?x?xf64>
    return %0 : memref<?x?xf64>
  }
}

