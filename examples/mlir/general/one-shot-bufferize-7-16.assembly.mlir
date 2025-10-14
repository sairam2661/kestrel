module {
  func.func @custom_op(%arg0: !test.test_tensor<[32, 64], f64>) -> !test.test_tensor<[32, 128], f64> {
    %0 = "test.dummy_tensor_op"(%arg0) : (!test.test_tensor<[32, 64], f64>) -> !test.test_tensor<[32, 128], f64>
    return %0 : !test.test_tensor<[32, 128], f64>
  }
}

