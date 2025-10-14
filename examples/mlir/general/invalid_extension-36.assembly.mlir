module {
  func.func @test_cast_i8_bf16(%arg0: tensor<13x21x3xi8>) -> tensor<13x21x3xbf16> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xi8>) -> tensor<13x21x3xbf16>
    return %0 : tensor<13x21x3xbf16>
  }
}

