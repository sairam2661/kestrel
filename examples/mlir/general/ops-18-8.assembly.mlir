module {
  func.func @tensor_reshape(%arg0: tensor<*xf32>, %arg1: tensor<1xi32>, %arg2: tensor<2xi32>, %arg3: tensor<?xi32>) -> tensor<*xf32> {
    %reshape = tensor.reshape %arg0(%arg1) : (tensor<*xf32>, tensor<1xi32>) -> tensor<?xf32>
    %reshape_0 = tensor.reshape %reshape(%arg2) : (tensor<?xf32>, tensor<2xi32>) -> tensor<?x?xf32>
    %reshape_1 = tensor.reshape %reshape_0(%arg3) : (tensor<?x?xf32>, tensor<?xi32>) -> tensor<*xf32>
    return %reshape_1 : tensor<*xf32>
  }
}

