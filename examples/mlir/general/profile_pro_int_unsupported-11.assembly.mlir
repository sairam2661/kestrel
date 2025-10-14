module {
  func.func @test_clamp(%arg0: tensor<13x21x3xi8>) -> tensor<13x21x3xi8> {
    %0 = tosa.clamp %arg0 {max_val = 1 : i8, min_val = 0 : i8} : (tensor<13x21x3xi8>) -> tensor<13x21x3xi8>
    return %0 : tensor<13x21x3xi8>
  }
}

