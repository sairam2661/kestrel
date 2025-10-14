module {
  func.func @test_const_i2(%arg0: tensor<1xi2>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi2>}> : () -> tensor<1xi2>
    return
  }
}

