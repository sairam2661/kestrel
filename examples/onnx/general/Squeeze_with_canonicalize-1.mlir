"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x32x?x64xf32>) -> tensor<*xf32>, sym_name = "test_squeeze_unknown_dimensions", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x1x32x?x64xf32>):
    %0 = "onnx.Constant"() {value = dense<[1, -2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Squeeze"(%arg0, %0) : (tensor<?x1x32x?x64xf32>, tensor<2xi64>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

