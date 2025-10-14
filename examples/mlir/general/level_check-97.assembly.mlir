module {
  func.func @test_fft2d_imag_h(%arg0: tensor<32x16384x32xf32>, %arg1: tensor<32x16384x32xf32>) -> (tensor<32x16384x32xf32>, tensor<32x16384x32xf32>) {
    %output_real, %output_imag = tosa.fft2d %arg0, %arg1 {inverse = false} : (tensor<32x16384x32xf32>, tensor<32x16384x32xf32>) -> (tensor<32x16384x32xf32>, tensor<32x16384x32xf32>)
    return %output_real, %output_imag : tensor<32x16384x32xf32>, tensor<32x16384x32xf32>
  }
}

