module {
  func.func @self_copy(%arg0: memref<?xf32>) {
    memref.copy %arg0, %arg0 : memref<?xf32> to memref<?xf32>
    return
  }
}

