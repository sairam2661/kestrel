module {
  func.func @broadcast_scalar_scalar_scalar(%arg0: tensor<i32>, %arg1: tensor<i32>) -> tensor<i32> {
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    return %0 : tensor<i32>
  }
}

