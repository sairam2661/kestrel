module {
  func.func @broadcast_tensor_tensor_tensor(%arg0: tensor<3x2xi32>, %arg1: tensor<*xi32>) -> tensor<4x3x2xi32> {
    %0 = "test.broadcastable"(%arg0, %arg0, %arg1) : (tensor<3x2xi32>, tensor<3x2xi32>, tensor<*xi32>) -> tensor<4x3x2xi32>
    return %0 : tensor<4x3x2xi32>
  }
}

