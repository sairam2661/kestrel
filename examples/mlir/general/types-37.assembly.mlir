module {
  func.func @same_types(%arg0: tensor<*xi32>, %arg1: tensor<*xf32>) {
    "test.operands_have_same_type"(%arg0, %arg0) : (tensor<*xi32>, tensor<*xi32>) -> ()
    %0 = "test.operand0_and_result_have_same_type"(%arg0, %arg1) : (tensor<*xi32>, tensor<*xf32>) -> tensor<*xi32>
    return
  }
}

