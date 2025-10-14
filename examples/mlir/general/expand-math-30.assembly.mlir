module {
  func.func @unranked_rsqrt_op(%arg0: tensor<*xf32>) -> tensor<*xf32> {
    %0 = math.rsqrt %arg0 : tensor<*xf32>
    return %0 : tensor<*xf32>
  }
}

