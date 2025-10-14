module {
  func.func @memcpy_after_cast(%arg0: memref<10xf32>, %arg1: memref<10xf32>) {
    %cast = memref.cast %arg0 : memref<10xf32> to memref<?xf32>
    %cast_0 = memref.cast %arg1 : memref<10xf32> to memref<?xf32>
    gpu.memcpy  %cast, %cast_0 : memref<?xf32>, memref<?xf32>
    return
  }
}

