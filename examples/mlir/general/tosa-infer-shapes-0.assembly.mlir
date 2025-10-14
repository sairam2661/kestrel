module {
  func.func @test_return(%arg0: tensor<4xf32>) -> tensor<*xf32> {
    %0 = tosa.log %arg0 : (tensor<4xf32>) -> tensor<*xf32>
    return %0 : tensor<*xf32>
  }
}

