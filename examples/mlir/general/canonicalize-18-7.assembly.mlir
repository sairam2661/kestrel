module {
  func.func @clone_before_dealloc(%arg0: memref<?xf32>) -> memref<?xf32> {
    %0 = bufferization.clone %arg0 : memref<?xf32> to memref<?xf32>
    "use"(%0) : (memref<?xf32>) -> ()
    memref.dealloc %0 : memref<?xf32>
    return %arg0 : memref<?xf32>
  }
}

