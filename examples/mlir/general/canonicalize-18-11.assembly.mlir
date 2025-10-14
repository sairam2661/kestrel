module {
  func.func @alias_is_freed(%arg0: memref<?xf32>) {
    %cast = memref.cast %arg0 : memref<?xf32> to memref<32xf32>
    %0 = bufferization.clone %cast : memref<32xf32> to memref<32xf32>
    memref.dealloc %arg0 : memref<?xf32>
    "use"(%0) : (memref<32xf32>) -> ()
    memref.dealloc %0 : memref<32xf32>
    return
  }
}

