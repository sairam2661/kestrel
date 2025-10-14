module {
  func.func @same_element_count_success(%arg0: tensor<36xi32>, %arg1: tensor<1x2xf32>, %arg2: tensor<f32>) {
    %0 = "test.operand0_and_result_have_same_element_count"(%arg0, %arg1) : (tensor<36xi32>, tensor<1x2xf32>) -> tensor<3x4x3xf32>
    %1 = "test.operand0_and_result_have_same_element_count"(%arg0, %arg1) : (tensor<36xi32>, tensor<1x2xf32>) -> tensor<3x12xf64>
    %2 = "test.operand0_and_result_have_same_element_count"(%arg2, %arg1) : (tensor<f32>, tensor<1x2xf32>) -> memref<1x1x1xi32>
    return
  }
}

