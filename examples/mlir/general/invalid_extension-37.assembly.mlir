module {
  func.func @test_cast_bf16_i8(%arg0: tensor<13x21x3xbf16>) -> tensor<13x21x3xi8> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xbf16>) -> tensor<13x21x3xi8>
    return %0 : tensor<13x21x3xi8>
  }
}

