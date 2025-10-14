module {
  func.func @builtin_unranked(%arg0: tensor<*xf32>) -> memref<*xf32> {
    %0 = bufferization.to_buffer %arg0 : tensor<*xf32> to memref<*xf32>
    return %0 : memref<*xf32>
  }
}

