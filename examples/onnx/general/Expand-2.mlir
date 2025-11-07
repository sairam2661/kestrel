"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1x6x1xi64>) -> tensor<*xi64>, sym_name = "test_expand_integer_tensor"}> ({
  ^bb0(%arg0: tensor<2x1x6x1xi64>):
    %0 = "onnx.Constant"() {value = dense<[7, 1, 5]> : tensor<3xi64>} : () -> tensor<3xi64>
    %1 = "onnx.Expand"(%arg0, %0) : (tensor<2x1x6x1xi64>, tensor<3xi64>) -> tensor<*xi64>
    "func.return"(%1) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

