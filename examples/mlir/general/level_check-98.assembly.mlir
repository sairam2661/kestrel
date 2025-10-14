module {
  func.func @test_fft2d_imag_w(%arg0: tensor<32x32x16384xf32>, %arg1: tensor<32x32x16384xf32>) -> (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>) {
    %output_real, %output_imag = tosa.fft2d %arg0, %arg1 {inverse = false} : (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>) -> (tensor<32x32x16384xf32>, tensor<32x32x16384xf32>)
    return %output_real, %output_imag : tensor<32x32x16384xf32>, tensor<32x32x16384xf32>
  }
}

