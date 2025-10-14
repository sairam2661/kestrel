module {
  func.func @test_negate(%arg0: tensor<13x21x3xi16>, %arg1: tensor<1xi16>, %arg2: tensor<1xi16>) -> tensor<13x21x3xi16> {
    %0 = tosa.negate %arg0, %arg1, %arg2 : (tensor<13x21x3xi16>, tensor<1xi16>, tensor<1xi16>) -> tensor<13x21x3xi16>
    return %0 : tensor<13x21x3xi16>
  }
}

