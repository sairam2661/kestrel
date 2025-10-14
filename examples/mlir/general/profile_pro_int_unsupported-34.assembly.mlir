module {
  func.func @test_scatter(%arg0: tensor<13x27x3xi32>, %arg1: tensor<13x26xi32>, %arg2: tensor<13x26x3xi32>) -> tensor<13x27x3xi32> {
    %0 = tosa.scatter %arg0, %arg1, %arg2 : (tensor<13x27x3xi32>, tensor<13x26xi32>, tensor<13x26x3xi32>) -> tensor<13x27x3xi32>
    return %0 : tensor<13x27x3xi32>
  }
}

