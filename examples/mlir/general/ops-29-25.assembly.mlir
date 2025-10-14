module {
  func.func @test_rfft2d_with_local_bound(%arg0: tensor<13x8x16xf32>) -> (tensor<13x8x9xf32>, tensor<13x8x9xf32>) {
    %output_real, %output_imag = tosa.rfft2d %arg0 {local_bound = true} : (tensor<13x8x16xf32>) -> (tensor<13x8x9xf32>, tensor<13x8x9xf32>)
    return %output_real, %output_imag : tensor<13x8x9xf32>, tensor<13x8x9xf32>
  }
}

