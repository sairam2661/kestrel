module {
  func.func @test_gather(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x26xi32>) -> tensor<13x26x3xbf16> {
    %0 = tosa.gather %arg0, %arg1 : (tensor<13x21x3xbf16>, tensor<13x26xi32>) -> tensor<13x26x3xbf16>
    return %0 : tensor<13x26x3xbf16>
  }
}

