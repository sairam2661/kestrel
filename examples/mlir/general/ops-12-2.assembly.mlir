module {
  func.func @rank(%arg0: memref<4x4x?xf32>) {
    %0 = memref.rank %arg0 : memref<4x4x?xf32>
    %1 = memref.rank %arg0 : memref<4x4x?xf32>
    return
  }
}

