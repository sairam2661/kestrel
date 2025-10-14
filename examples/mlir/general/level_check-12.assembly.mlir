module {
  func.func @test_logical_left_shift_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xi32>, %arg1: tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32> {
    %0 = tosa.logical_left_shift %arg0, %arg1 : (tensor<1x1x1x1x13x21x3xi32>, tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>
    return %0 : tensor<1x1x1x1x13x21x3xi32>
  }
}

