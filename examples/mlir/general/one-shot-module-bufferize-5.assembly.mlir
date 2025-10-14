module {
  func.func private @private_func(tensor<?xf32>) -> f32
  func.func @main(%arg0: tensor<?xf32> {bufferization.writable = true}) -> f32 {
    %0 = call @private_func(%arg0) : (tensor<?xf32>) -> f32
    return %0 : f32
  }
}

