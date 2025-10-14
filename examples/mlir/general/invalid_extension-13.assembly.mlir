module {
  func.func @test_pow(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x21x1xbf16>) -> tensor<13x21x3xbf16> {
    %0 = tosa.pow %arg0, %arg1 : (tensor<13x21x3xbf16>, tensor<13x21x1xbf16>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

