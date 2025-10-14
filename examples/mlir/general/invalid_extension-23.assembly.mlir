module {
  func.func @test_rsqrt(%arg0: tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16> {
    %0 = tosa.rsqrt %arg0 : (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

