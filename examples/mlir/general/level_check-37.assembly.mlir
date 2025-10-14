module {
  func.func @test_greater_rank_invalid(%arg0: tensor<1x1x1x1x13x21x1xf32>, %arg1: tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xi1> {
    %0 = tosa.greater %arg0, %arg1 : (tensor<1x1x1x1x13x21x1xf32>, tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xi1>
    return %0 : tensor<1x1x1x1x13x21x3xi1>
  }
}

