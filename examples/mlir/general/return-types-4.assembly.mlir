module {
  func.func @testReifyFunctions(%arg0: tensor<10xf32>, %arg1: tensor<20xf32>) {
    %0 = "test.op_with_shaped_type_infer_type_if"(%arg0, %arg1) : (tensor<10xf32>, tensor<20xf32>) -> tensor<10xi17>
    %1 = "test.op_with_shaped_type_infer_type_if"(%arg1, %arg0) : (tensor<20xf32>, tensor<10xf32>) -> tensor<20xi17>
    return
  }
}

