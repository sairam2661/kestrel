module {
  func.func @test_gather(%arg0: tensor<13x21x3xi32>, %arg1: tensor<13x26xi32>) -> tensor<13x26x3xi32> {
    %0 = tosa.gather %arg0, %arg1 : (tensor<13x21x3xi32>, tensor<13x26xi32>) -> tensor<13x26x3xi32>
    return %0 : tensor<13x26x3xi32>
  }
}

