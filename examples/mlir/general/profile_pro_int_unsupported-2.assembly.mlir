module {
  func.func @test_const_i32() -> tensor<3x11x11x3xi32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<3x11x11x3xi32>}> : () -> tensor<3x11x11x3xi32>
    return %0 : tensor<3x11x11x3xi32>
  }
}

