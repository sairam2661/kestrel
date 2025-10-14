module {
  func.func @test_non_tosa_consumer_extract(%arg0: tensor<4x4xf32>, %arg1: index) -> f32 {
    %0 = tosa.log %arg0 : (tensor<4x4xf32>) -> tensor<?x?xf32>
    %extracted = tensor.extract %0[%arg1, %arg1] : tensor<?x?xf32>
    return %extracted : f32
  }
}

