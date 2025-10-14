module {
  func.func @test_const_i4() -> tensor<3x11x11x3xi4> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<3x11x11x3xi4>}> : () -> tensor<3x11x11x3xi4>
    return %0 : tensor<3x11x11x3xi4>
  }
}

