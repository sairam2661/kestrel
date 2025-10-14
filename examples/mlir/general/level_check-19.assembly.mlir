module {
  func.func @test_pow_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xf32>, %arg1: tensor<1x1x1x1x13x21x1xf32>) -> tensor<1x1x1x1x13x21x3xf32> {
    %0 = tosa.pow %arg0, %arg1 : (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x21x1xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    return %0 : tensor<1x1x1x1x13x21x3xf32>
  }
}

