module {
  func.func @buffer_cast_of_tensor_load(%arg0: memref<?xf32>) -> memref<?xf32> {
    %0 = bufferization.to_tensor %arg0 : memref<?xf32> to tensor<?xf32>
    %1 = bufferization.to_buffer %0 : tensor<?xf32> to memref<?xf32>
    return %1 : memref<?xf32>
  }
}

