module {
  func.func @test_cast_i8_i32(%arg0: tensor<13x21x3xi8>) -> tensor<13x21x3xi32> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xi8>) -> tensor<13x21x3xi32>
    return %0 : tensor<13x21x3xi32>
  }
}

