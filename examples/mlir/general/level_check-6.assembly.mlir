module {
  func.func @test_arithmetic_right_shift_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xf32>, %arg1: tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32> {
    %0 = tosa.arithmetic_right_shift %arg0, %arg1 {round = false} : (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    return %0 : tensor<1x1x1x1x13x21x3xf32>
  }
}

