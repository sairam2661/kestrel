module {
  func.func @test_select(%arg0: tensor<1x1x1xi1>, %arg1: tensor<13x21x3xi8>, %arg2: tensor<13x21x3xi8>) -> tensor<13x21x3xi8> {
    %0 = tosa.select %arg0, %arg1, %arg2 : (tensor<1x1x1xi1>, tensor<13x21x3xi8>, tensor<13x21x3xi8>) -> tensor<13x21x3xi8>
    return %0 : tensor<13x21x3xi8>
  }
}

