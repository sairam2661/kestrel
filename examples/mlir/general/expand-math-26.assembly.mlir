module {
  func.func @rsqrt_tns(%arg0: tensor<5x8xf32>) -> tensor<5x8xf32> {
    %0 = math.rsqrt %arg0 : tensor<5x8xf32>
    return %0 : tensor<5x8xf32>
  }
}

