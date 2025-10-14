module {
  func.func @dim_of_tensor_load(%arg0: memref<?xf32>) -> index {
    %c0 = arith.constant 0 : index
    %0 = bufferization.to_tensor %arg0 : memref<?xf32> to tensor<?xf32>
    %dim = tensor.dim %0, %c0 : tensor<?xf32>
    return %dim : index
  }
}

