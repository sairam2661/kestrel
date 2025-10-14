module {
  func.func @load_from_buffer_cast(%arg0: index, %arg1: index, %arg2: tensor<?x?xf32>) -> f32 {
    %0 = bufferization.to_buffer %arg2 : tensor<?x?xf32> to memref<?x?xf32>
    %1 = memref.load %0[%arg0, %arg1] : memref<?x?xf32>
    return %1 : f32
  }
}

