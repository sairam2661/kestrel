module {
  func.func @to_tensor_op_unsupported(%arg0: memref<?xf32>, %arg1: index) -> f32 {
    %0 = bufferization.to_tensor %arg0 : memref<?xf32> to tensor<?xf32>
    %extracted = tensor.extract %0[%arg1] : tensor<?xf32>
    return %extracted : f32
  }
}

