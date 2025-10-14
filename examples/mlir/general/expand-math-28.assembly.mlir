module {
  func.func @unranked_ceil_op(%arg0: tensor<*xf32>) -> tensor<*xf32> {
    %0 = math.ceil %arg0 : tensor<*xf32>
    return %0 : tensor<*xf32>
  }
}

