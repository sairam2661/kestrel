module {
  func.func @test_cast_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi16> {
    %0 = tosa.cast %arg0 : (tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi16>
    return %0 : tensor<1x1x1x1x13x21x3xi16>
  }
}

