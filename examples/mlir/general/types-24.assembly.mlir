module {
  func.func @ranked_tensor_success(%arg0: tensor<i8>, %arg1: tensor<1xi32>, %arg2: tensor<?x?xf32>) {
    "test.ranked_tensor_op"(%arg0) : (tensor<i8>) -> ()
    "test.ranked_tensor_op"(%arg1) : (tensor<1xi32>) -> ()
    "test.ranked_tensor_op"(%arg2) : (tensor<?x?xf32>) -> ()
    return
  }
}

