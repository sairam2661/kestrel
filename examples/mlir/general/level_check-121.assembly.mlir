module {
  func.func @test_rfft2d_tensor_size_invalid(%arg0: tensor<536870912x8x16xf32>) -> (tensor<536870912x8x9xf32>, tensor<536870912x8x9xf32>) {
    %output_real, %output_imag = tosa.rfft2d %arg0 : (tensor<536870912x8x16xf32>) -> (tensor<536870912x8x9xf32>, tensor<536870912x8x9xf32>)
    return %output_real, %output_imag : tensor<536870912x8x9xf32>, tensor<536870912x8x9xf32>
  }
}

