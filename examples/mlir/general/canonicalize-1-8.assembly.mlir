module {
  func.func @memset_after_cast(%arg0: memref<10xf32>, %arg1: f32) {
    %cast = memref.cast %arg0 : memref<10xf32> to memref<?xf32>
    gpu.memset  %cast, %arg1 : memref<?xf32>, f32
    return
  }
}

