module {
  func.func @same_rank_success(%arg0: tensor<1xi32>, %arg1: tensor<2xf32>, %arg2: memref<3xi32>, %arg3: tensor<1x2xf32>, %arg4: tensor<1x2xi32>) {
    "test.operands_have_same_rank"(%arg0, %arg1) : (tensor<1xi32>, tensor<2xf32>) -> ()
    "test.operands_have_same_rank"(%arg0, %arg2) : (tensor<1xi32>, memref<3xi32>) -> ()
    %0 = "test.operand0_and_result_have_same_rank"(%arg0, %arg3) : (tensor<1xi32>, tensor<1x2xf32>) -> tensor<3xf32>
    %1 = "test.operand0_and_result_have_same_rank"(%arg4, %arg3) : (tensor<1x2xi32>, tensor<1x2xf32>) -> tensor<3x3xf64>
    return
  }
}

