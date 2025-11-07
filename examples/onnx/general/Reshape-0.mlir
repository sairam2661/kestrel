"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10xf32>) -> tensor<*xf32>, sym_name = "test_reshape_constant"}> ({
  ^bb0(%arg0: tensor<1x10xf32>):
    %0 = "onnx.Constant"() {value = dense<[2, 5]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<1x10xf32>, tensor<2xi64>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

