"builtin.module"() ({
  "func.func"() <{function_type = (!test.test_tensor<[32, 64], f64>) -> !test.test_tensor<[32, 128], f64>, sym_name = "custom_op"}> ({
  ^bb0(%arg0: !test.test_tensor<[32, 64], f64>):
    %0 = "test.dummy_tensor_op"(%arg0) : (!test.test_tensor<[32, 64], f64>) -> !test.test_tensor<[32, 128], f64>
    "func.return"(%0) : (!test.test_tensor<[32, 128], f64>) -> ()
  }) : () -> ()
}) : () -> ()

