module {
  func.func @test_matmul(%arg0: tensor<1x14x19xf32>, %arg1: tensor<1x19x28xf32>, %arg2: tensor<1xf32>) -> tensor<1x14x28xf32> {
    %0 = tosa.matmul %arg0, %arg1, %arg2, %arg2 : (tensor<1x14x19xf32>, tensor<1x19x28xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1x14x28xf32>
    return %0 : tensor<1x14x28xf32>
  }
}

