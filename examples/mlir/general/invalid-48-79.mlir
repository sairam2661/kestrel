"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x13x13x5xf32>) -> tensor<1x13x13xi64>, sym_name = "test_unsupported_int64_data_type"}> ({
  ^bb0(%arg0: tensor<1x13x13x5xf32>):
    %0 = "tosa.argmax"(%arg0) <{axis = 3 : i32, nan_mode = "PROPAGATE"}> : (tensor<1x13x13x5xf32>) -> tensor<1x13x13xi64>
    "func.return"(%0) : (tensor<1x13x13xi64>) -> ()
  }) : () -> ()
}) : () -> ()

