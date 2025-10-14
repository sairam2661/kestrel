module {
  func.func @test_identity(%arg0: tensor<13x21x3xi4>) -> tensor<13x21x3xi4> {
    %0 = tosa.identity %arg0 : (tensor<13x21x3xi4>) -> tensor<13x21x3xi4>
    return %0 : tensor<13x21x3xi4>
  }
}

