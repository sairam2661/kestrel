module {
  func.func @test_const(%arg0: tensor<1x1xi32>) -> tensor<1x1x1x1x1x1x1xi32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1x1x1x1x1x1x1xi32>}> : () -> tensor<1x1x1x1x1x1x1xi32>
    return %0 : tensor<1x1x1x1x1x1x1xi32>
  }
}

