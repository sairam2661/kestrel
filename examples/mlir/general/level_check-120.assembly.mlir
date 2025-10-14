module {
  func.func @test_fft2d_tensor_size_invalid(%arg0: tensor<123456x8192x8192xf32>, %arg1: tensor<123456x8192x8192xf32>) -> (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>) {
    %output_real, %output_imag = tosa.fft2d %arg0, %arg1 {inverse = false} : (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>) -> (tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>)
    return %output_real, %output_imag : tensor<123456x8192x8192xf32>, tensor<123456x8192x8192xf32>
  }
}

