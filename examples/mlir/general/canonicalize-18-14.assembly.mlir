module {
  func.func @clone_and_realloc(%arg0: memref<?xf32>) {
    %0 = bufferization.clone %arg0 : memref<?xf32> to memref<32xf32>
    "use"(%0) : (memref<32xf32>) -> ()
    %1 = memref.realloc %0 : memref<32xf32> to memref<64xf32>
    memref.dealloc %1 : memref<64xf32>
    return
  }
}

