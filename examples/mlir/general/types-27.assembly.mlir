module {
  func.func @multi_tensor_rank_of_success(%arg0: tensor<i8>, %arg1: tensor<i32>, %arg2: tensor<f32>, %arg3: tensor<1xi8>, %arg4: tensor<1xi32>, %arg5: tensor<1xf32>) {
    "test.multi_tensor_rank_of"(%arg0) : (tensor<i8>) -> ()
    "test.multi_tensor_rank_of"(%arg1) : (tensor<i32>) -> ()
    "test.multi_tensor_rank_of"(%arg2) : (tensor<f32>) -> ()
    "test.multi_tensor_rank_of"(%arg3) : (tensor<1xi8>) -> ()
    "test.multi_tensor_rank_of"(%arg4) : (tensor<1xi32>) -> ()
    "test.multi_tensor_rank_of"(%arg5) : (tensor<1xf32>) -> ()
    return
  }
}

