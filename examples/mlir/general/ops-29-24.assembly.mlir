module {
  func.func @test_rfft2d_width1(%arg0: tensor<1x1x1xf32>) -> (tensor<1x1x1xf32>, tensor<1x1x1xf32>) {
    %output_real, %output_imag = tosa.rfft2d %arg0 : (tensor<1x1x1xf32>) -> (tensor<1x1x1xf32>, tensor<1x1x1xf32>)
    return %output_real, %output_imag : tensor<1x1x1xf32>, tensor<1x1x1xf32>
  }
}

