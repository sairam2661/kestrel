module {
  func.func @test_scatter_tensor_size_invalid(%arg0: tensor<13x260000000x3xf32>, %arg1: tensor<13x260000000xi32>, %arg2: tensor<13x260000000x3xf32>) -> tensor<13x260000000x3xf32> {
    %0 = tosa.scatter %arg0, %arg1, %arg2 : (tensor<13x260000000x3xf32>, tensor<13x260000000xi32>, tensor<13x260000000x3xf32>) -> tensor<13x260000000x3xf32>
    return %0 : tensor<13x260000000x3xf32>
  }
}

