module {
  func.func @broadcast_tensor_scalar_tensor(%arg0: tensor<4xi32>, %arg1: tensor<i32>) -> tensor<4xi32> {
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<4xi32>, tensor<i32>) -> tensor<4xi32>
    return %0 : tensor<4xi32>
  }
}

