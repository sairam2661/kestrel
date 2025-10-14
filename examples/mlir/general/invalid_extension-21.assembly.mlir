module {
  func.func @test_negate(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<1xbf16>, %arg2: tensor<1xbf16>) -> tensor<13x21x3xbf16> {
    %0 = tosa.negate %arg0, %arg1, %arg2 : (tensor<13x21x3xbf16>, tensor<1xbf16>, tensor<1xbf16>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

