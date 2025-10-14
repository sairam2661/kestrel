module {
  func.func @clone_and_cast(%arg0: memref<?xf32>) -> memref<32xf32> {
    %0 = bufferization.clone %arg0 : memref<?xf32> to memref<32xf32>
    memref.dealloc %arg0 : memref<?xf32>
    return %0 : memref<32xf32>
  }
}

