module {
  func.func @test_rfft2d_input_w(%arg0: tensor<13x8x16384xf32>) -> (tensor<13x8x8193xf32>, tensor<13x8x8193xf32>) {
    %output_real, %output_imag = tosa.rfft2d %arg0 : (tensor<13x8x16384xf32>) -> (tensor<13x8x8193xf32>, tensor<13x8x8193xf32>)
    return %output_real, %output_imag : tensor<13x8x8193xf32>, tensor<13x8x8193xf32>
  }
}

