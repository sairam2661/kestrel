module {
  func.func @test_sub(%arg0: tensor<1x21x3xbf16>, %arg1: tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16> {
    %0 = tosa.sub %arg0, %arg1 : (tensor<1x21x3xbf16>, tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

