module {
  func.func @test_cos(%arg0: tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16> {
    %0 = tosa.cos %arg0 : (tensor<13x21x3xbf16>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

