module {
  func.func @test_dynamic_batch_rfft2d(%arg0: tensor<?x2x4xf32>) {
    %output_real, %output_imag = tosa.rfft2d %arg0 : (tensor<?x2x4xf32>) -> (tensor<?x?x?xf32>, tensor<?x?x?xf32>)
    return
  }
}

