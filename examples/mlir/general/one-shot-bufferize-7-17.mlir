"builtin.module"() ({
  "func.func"() <{function_type = () -> !test.test_tensor<[42], f64>, sym_name = "custom_origin_op"}> ({
    %0 = "test.create_tensor_op"() : () -> !test.test_tensor<[21], f64>
    %1 = "test.dummy_tensor_op"(%0) : (!test.test_tensor<[21], f64>) -> !test.test_tensor<[42], f64>
    "func.return"(%1) : (!test.test_tensor<[42], f64>) -> ()
  }) : () -> ()
}) : () -> ()

