module {
  func.func @test_const_ui8(%arg0: tensor<1xui8>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xui8>}> : () -> tensor<1xui8>
    return
  }
}

