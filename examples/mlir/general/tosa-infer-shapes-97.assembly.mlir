module {
  func.func @test_dynamic_width_rfft2d(%arg0: tensor<5x2x?xf32>) {
    %output_real, %output_imag = tosa.rfft2d %arg0 : (tensor<5x2x?xf32>) -> (tensor<?x?x?xf32>, tensor<?x?x?xf32>)
    return
  }
}

