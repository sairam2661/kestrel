module {
  func.func @test_equal(%arg0: tensor<13x21x3xbf16>, %arg1: tensor<13x1x3xbf16>) -> tensor<13x21x3xi1> {
    %0 = tosa.equal %arg0, %arg1 : (tensor<13x21x3xbf16>, tensor<13x1x3xbf16>) -> tensor<13x21x3xi1>
    return %0 : tensor<13x21x3xi1>
  }
}

