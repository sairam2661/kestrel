module {
  func.func @test_max(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x21x1xbf16>) -> tensor<13x21x3xbf16> {
    %0 = tosa.maximum %arg0, %arg1 : (tensor<13x21x3xbf16>, tensor<13x21x1xbf16>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

