"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i64>, tensor<i64>, tensor<i64>) -> tensor<*xi64>, sym_name = "test_range_dynamic_i64"}> ({
  ^bb0(%arg0: tensor<i64>, %arg1: tensor<i64>, %arg2: tensor<i64>):
    %0 = "onnx.Range"(%arg0, %arg1, %arg2) : (tensor<i64>, tensor<i64>, tensor<i64>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

