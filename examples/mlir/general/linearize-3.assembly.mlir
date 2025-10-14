module {
  func.func @test_tensor_no_linearize(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xf32>) -> (tensor<2x2xf32>, tensor<2x2xf32>) {
    %0 = arith.mulf %arg0, %arg1 : tensor<2x2xf32>
    return %0, %arg0 : tensor<2x2xf32>, tensor<2x2xf32>
  }
}

