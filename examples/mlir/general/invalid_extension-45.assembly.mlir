module {
  func.func @test_cast_bf16_i32(%arg0: tensor<13x21x3xbf16>) -> tensor<13x21x3xi32> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xbf16>) -> tensor<13x21x3xi32>
    return %0 : tensor<13x21x3xi32>
  }
}

