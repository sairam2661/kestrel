module {
  func.func @clone_multiple_dealloc_of_clone(%arg0: memref<?xf32>) -> memref<?xf32> {
    %0 = bufferization.clone %arg0 : memref<?xf32> to memref<?xf32>
    "use"(%0) : (memref<?xf32>) -> ()
    "if_else"() ({
      memref.dealloc %0 : memref<?xf32>
    }, {
      memref.dealloc %0 : memref<?xf32>
    }) : () -> ()
    return %arg0 : memref<?xf32>
  }
}

