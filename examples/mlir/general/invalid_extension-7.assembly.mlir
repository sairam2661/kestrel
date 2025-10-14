module {
  func.func @test_clamp(%arg0: tensor<13x21x3xi16>) -> tensor<13x21x3xi16> {
    %0 = tosa.clamp %arg0 {max_val = 1 : i16, min_val = 0 : i16} : (tensor<13x21x3xi16>) -> tensor<13x21x3xi16>
    return %0 : tensor<13x21x3xi16>
  }
}

