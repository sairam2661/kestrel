module {
  func.func @test_mul(%arg0: tensor<13x21x3xi16>, %arg1: tensor<13x1x3xi16>, %arg2: tensor<1xi8>) -> tensor<13x21x3xi32> {
    %0 = tosa.mul %arg0, %arg1, %arg2 : (tensor<13x21x3xi16>, tensor<13x1x3xi16>, tensor<1xi8>) -> tensor<13x21x3xi32>
    return %0 : tensor<13x21x3xi32>
  }
}

