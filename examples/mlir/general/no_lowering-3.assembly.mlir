module {
  func.func @test_tensor_reshape_unranked(%arg0: tensor<*xf32>, %arg1: tensor<1xi32>) -> tensor<?xf32> {
    %reshape = tensor.reshape %arg0(%arg1) : (tensor<*xf32>, tensor<1xi32>) -> tensor<?xf32>
    return %reshape : tensor<?xf32>
  }
}

