module {
  func.func @clone_after_cast(%arg0: memref<?xf32>) -> memref<32xf32> {
    %cast = memref.cast %arg0 : memref<?xf32> to memref<32xf32>
    %0 = bufferization.clone %cast : memref<32xf32> to memref<32xf32>
    return %0 : memref<32xf32>
  }
}

