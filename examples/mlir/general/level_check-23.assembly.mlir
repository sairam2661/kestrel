module {
  func.func @test_bitwise_not_rank_invalid(%arg0: tensor<1x1x1x1x13x21x1xi32>) -> tensor<1x1x1x1x13x21x1xi32> {
    %0 = tosa.bitwise_not %arg0 : (tensor<1x1x1x1x13x21x1xi32>) -> tensor<1x1x1x1x13x21x1xi32>
    return %0 : tensor<1x1x1x1x13x21x1xi32>
  }
}

