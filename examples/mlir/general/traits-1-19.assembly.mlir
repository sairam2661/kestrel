module {
  func.func @broadcastDifferentResultType(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>) -> tensor<4xi1> {
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    return %0 : tensor<4xi1>
  }
}

