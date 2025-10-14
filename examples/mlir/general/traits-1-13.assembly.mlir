module {
  func.func @broadcast_tensor_tensor_tensor(%arg0: tensor<?x6x1xi32>, %arg1: tensor<*xi32>) -> tensor<?x6x?xi32> {
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<?x6x1xi32>, tensor<*xi32>) -> tensor<?x6x?xi32>
    return %0 : tensor<?x6x?xi32>
  }
}

