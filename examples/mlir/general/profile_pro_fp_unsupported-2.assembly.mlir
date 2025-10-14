module {
  func.func @test_const_f32() -> tensor<3x11x11x3xf32> {
    %0 = "tosa.const"() <{values = dense<3.000000e+00> : tensor<3x11x11x3xf32>}> : () -> tensor<3x11x11x3xf32>
    return %0 : tensor<3x11x11x3xf32>
  }
}

