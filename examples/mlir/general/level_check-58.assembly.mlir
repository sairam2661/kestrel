module {
  func.func @test_const_ui32(%arg0: tensor<1xui32>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xui32>}> : () -> tensor<1xui32>
    return
  }
}

