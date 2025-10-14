module {
  func.func @test_cast_i1_i8(%arg0: tensor<13x21x3xi1>) -> tensor<13x21x3xi8> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xi1>) -> tensor<13x21x3xi8>
    return %0 : tensor<13x21x3xi8>
  }
}

