module {
  func.func @test_negate_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xf32>, %arg1: tensor<1xf32>) -> tensor<1x1x1x1x13x21x3xf32> {
    %0 = tosa.negate %arg0, %arg1, %arg1 : (tensor<1x1x1x1x13x21x3xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    return %0 : tensor<1x1x1x1x13x21x3xf32>
  }
}

