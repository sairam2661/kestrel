module {
  func.func @test_dynamic_batch_fft2d(%arg0: tensor<?x4x8xf32>, %arg1: tensor<?x4x8xf32>) -> (tensor<?x4x8xf32>, tensor<?x4x8xf32>) {
    %output_real, %output_imag = tosa.fft2d %arg0, %arg1 {inverse = false} : (tensor<?x4x8xf32>, tensor<?x4x8xf32>) -> (tensor<?x4x8xf32>, tensor<?x4x8xf32>)
    return %output_real, %output_imag : tensor<?x4x8xf32>, tensor<?x4x8xf32>
  }
}

