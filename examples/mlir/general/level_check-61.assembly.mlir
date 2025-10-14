module {
  func.func @test_identity_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32> {
    %0 = tosa.identity %arg0 : (tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>
    return %0 : tensor<1x1x1x1x13x21x3xi32>
  }
}

