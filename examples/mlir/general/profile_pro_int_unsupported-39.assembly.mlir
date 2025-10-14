module {
  func.func @test_cast_i32_i16(%arg0: tensor<13x21x3xi32>) -> tensor<13x21x3xi16> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xi32>) -> tensor<13x21x3xi16>
    return %0 : tensor<13x21x3xi16>
  }
}

