module {
  func.func @builtin_ranked(%arg0: tensor<42xf32>) -> memref<42xf32> {
    %0 = bufferization.to_buffer %arg0 : tensor<42xf32> to memref<42xf32>
    return %0 : memref<42xf32>
  }
}

