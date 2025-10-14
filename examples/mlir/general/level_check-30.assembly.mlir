module {
  func.func @test_logical_not_rank_invalid(%arg0: tensor<1x1x1x1x1x21x3xi1>) -> tensor<1x1x1x1x1x21x3xi1> {
    %0 = tosa.logical_not %arg0 : (tensor<1x1x1x1x1x21x3xi1>) -> tensor<1x1x1x1x1x21x3xi1>
    return %0 : tensor<1x1x1x1x1x21x3xi1>
  }
}

