module {
  func.func private @print_buffer(tensor<*xf32> {bufferization.access = "read"})
  func.func @private_func_read(%arg0: tensor<5xf32>) -> f32 {
    %c0 = arith.constant 0 : index
    %cast = tensor.cast %arg0 : tensor<5xf32> to tensor<*xf32>
    call @print_buffer(%cast) : (tensor<*xf32>) -> ()
    %extracted = tensor.extract %arg0[%c0] : tensor<5xf32>
    return %extracted : f32
  }
}

