module {
  func.func @test_non_tosa_consumer_shape(%arg0: tensor<4x4xf32>) -> !shape.shape {
    %0 = tosa.log %arg0 : (tensor<4x4xf32>) -> tensor<*xf32>
    %1 = shape.shape_of %0 : tensor<*xf32> -> !shape.shape
    return %1 : !shape.shape
  }
}

