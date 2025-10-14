module {
  func.func @custom_origin_op() -> !test.test_tensor<[42], f64> {
    %0 = "test.create_tensor_op"() : () -> !test.test_tensor<[21], f64>
    %1 = "test.dummy_tensor_op"(%0) : (!test.test_tensor<[21], f64>) -> !test.test_tensor<[42], f64>
    return %1 : !test.test_tensor<[42], f64>
  }
}

