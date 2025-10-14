module {
  func.func @succeededSameOperandAndResultShape(%arg0: tensor<10x10xf32>, %arg1: tensor<1xf32>, %arg2: tensor<*xf32>, %arg3: tensor<?xf32>) {
    %0 = "test.same_operand_and_result_shape"(%arg1, %arg1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %1 = "test.same_operand_and_result_shape"(%arg0, %arg0) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    %2 = "test.same_operand_and_result_shape"(%arg1, %arg2) : (tensor<1xf32>, tensor<*xf32>) -> tensor<1xf32>
    %3 = "test.same_operand_and_result_shape"(%arg1, %arg3) : (tensor<1xf32>, tensor<?xf32>) -> tensor<1xf32>
    %4 = "test.same_operand_and_result_shape"(%arg1, %arg3) : (tensor<1xf32>, tensor<?xf32>) -> memref<1xf32>
    return
  }
}

