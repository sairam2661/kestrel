module {
  func.func @outer_func(%arg0: tensor<5xf32>) -> tensor<5xf32> {
    return %arg0 : tensor<5xf32>
  }
  module @inner_module {
    func.func @inner_func(%arg0: tensor<5xf32> {bufferization.writable = false}) -> tensor<5xf32> {
      return %arg0 : tensor<5xf32>
    }
  }
}

