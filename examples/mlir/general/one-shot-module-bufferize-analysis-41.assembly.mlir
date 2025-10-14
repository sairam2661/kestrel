module {
  func.func private @ext_func(tensor<?xf32>) -> (tensor<5xf32>, tensor<6xf32>)
  func.func @private_func_aliasing(%arg0: tensor<?xf32>) -> f32 {
    %c0 = arith.constant 0 : index
    %0:2 = call @ext_func(%arg0) : (tensor<?xf32>) -> (tensor<5xf32>, tensor<6xf32>)
    %extracted = tensor.extract %0#1[%c0] : tensor<6xf32>
    return %extracted : f32
  }
}

