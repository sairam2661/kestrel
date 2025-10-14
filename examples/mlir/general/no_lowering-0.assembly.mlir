module {
  func.func @test_tensor_dim_unranked(%arg0: tensor<*xf32>) -> index {
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg0, %c0 : tensor<*xf32>
    return %dim : index
  }
}

