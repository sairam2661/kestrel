module {
  func.func @operand_rank_equals_result_size_success(%arg0: tensor<1x2x3x4xi32>) {
    %0 = "test.operand_rank_equals_result_size"(%arg0) : (tensor<1x2x3x4xi32>) -> tensor<4xi32>
    %1 = "test.operand_rank_equals_result_size"(%arg0) : (tensor<1x2x3x4xi32>) -> memref<2x2xf32>
    return
  }
}

