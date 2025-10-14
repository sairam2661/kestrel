module {
  func.func @test_logical_or_rank_invalid(%arg0: tensor<1x1x1x1x13x1x3xi1>, %arg1: tensor<1x1x1x1x13x21x3xi1>) -> tensor<1x1x1x1x13x21x3xi1> {
    %0 = tosa.logical_or %arg0, %arg1 : (tensor<1x1x1x1x13x1x3xi1>, tensor<1x1x1x1x13x21x3xi1>) -> tensor<1x1x1x1x13x21x3xi1>
    return %0 : tensor<1x1x1x1x13x21x3xi1>
  }
}

