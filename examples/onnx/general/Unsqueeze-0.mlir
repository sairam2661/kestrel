"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<*xf32>, sym_name = "test_unsqueeze", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.Constant"() {value = dense<[0, 3]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Unsqueeze"(%arg0, %0) : (tensor<10x10xf32>, tensor<2xi64>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

