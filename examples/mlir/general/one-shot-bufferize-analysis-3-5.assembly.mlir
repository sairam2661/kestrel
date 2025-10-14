module {
  func.func @to_buffer_not_read_only(%arg0: index, %arg1: f32) -> f32 {
    %generated = tensor.generate  {
    ^bb0(%arg2: index):
      tensor.yield %arg1 : f32
    } : tensor<5xf32>
    %0 = bufferization.to_buffer %generated : tensor<5xf32> to memref<5xf32>
    %extracted = tensor.extract %generated[%arg0] : tensor<5xf32>
    return %extracted : f32
  }
}

