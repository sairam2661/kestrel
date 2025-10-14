module {
  func.func private @ext_func(tensor<?xf32>)
  func.func @private_func_read_write(%arg0: tensor<5xf32>) -> f32 {
    %c0 = arith.constant 0 : index
    %cast = tensor.cast %arg0 : tensor<5xf32> to tensor<?xf32>
    call @ext_func(%cast) : (tensor<?xf32>) -> ()
    %extracted = tensor.extract %arg0[%c0] : tensor<5xf32>
    return %extracted : f32
  }
}

