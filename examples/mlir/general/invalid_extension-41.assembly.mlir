module {
  func.func @test_const_i48() -> tensor<3x11x11x3xi48> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<3x11x11x3xi48>}> : () -> tensor<3x11x11x3xi48>
    return %0 : tensor<3x11x11x3xi48>
  }
}

