module {
  func.func @test_simple_i16(%arg0: tensor<1xi16>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg0, %0 : (tensor<1xi16>, tensor<1xi16>, tensor<1xi8>) -> tensor<1xi32>
    return
  }
}

