module {
  func.func @same_element_types_success(%arg0: tensor<*xi32>, %arg1: i32, %arg2: memref<2x3xi32>) {
    "test.operands_have_same_element_type"(%arg0, %arg0) : (tensor<*xi32>, tensor<*xi32>) -> ()
    "test.operands_have_same_element_type"(%arg1, %arg0) : (i32, tensor<*xi32>) -> ()
    "test.operands_have_same_element_type"(%arg1, %arg2) : (i32, memref<2x3xi32>) -> ()
    return
  }
}

