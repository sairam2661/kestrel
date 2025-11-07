"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi64>, tensor<2x2xi64>) -> tensor<*xi1>, sym_name = "test_equal_int64"}> ({
  ^bb0(%arg0: tensor<2x2xi64>, %arg1: tensor<2x2xi64>):
    %0 = "onnx.Equal"(%arg0, %arg1) : (tensor<2x2xi64>, tensor<2x2xi64>) -> tensor<*xi1>
    "func.return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

