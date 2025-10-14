module {
  func.func @test_bitwise_and_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xi32>, %arg1: tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32> {
    %0 = tosa.bitwise_and %arg0, %arg1 : (tensor<1x1x1x1x13x21x3xi32>, tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>
    return %0 : tensor<1x1x1x1x13x21x3xi32>
  }
}

