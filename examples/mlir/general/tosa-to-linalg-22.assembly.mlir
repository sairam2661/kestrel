module {
  func.func @test_clamp_f16(%arg0: tensor<1xf16>) {
    %0 = tosa.clamp %arg0 {max_val = 6.000000e+00 : f16, min_val = 0.000000e+00 : f16} : (tensor<1xf16>) -> tensor<1xf16>
    return
  }
}

