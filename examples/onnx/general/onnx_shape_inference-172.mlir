"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1x6x1xf32>) -> tensor<*xf32>, sym_name = "test_expand_with_constant"}> ({
  ^bb0(%arg0: tensor<2x1x6x1xf32>):
    %0 = "onnx.Constant"() {value = dense<[7, 1, 5]> : tensor<3xi64>} : () -> tensor<3xi64>
    %1 = "onnx.Expand"(%arg0, %0) : (tensor<2x1x6x1xf32>, tensor<3xi64>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

