module {
  func.func @test_mul(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x1x3xbf16>, %arg2: tensor<1xi8>) -> tensor<13x21x3xbf16> {
    %0 = tosa.mul %arg0, %arg1, %arg2 : (tensor<13x21x3xbf16>, tensor<13x1x3xbf16>, tensor<1xi8>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

