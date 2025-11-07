"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf16>) -> tensor<*xf16>, sym_name = "test_reshape_unrank_3"}> ({
  ^bb0(%arg0: tensor<*xf16>):
    %0 = "onnx.Constant"() {value = dense<[4, -1, 3]> : tensor<3xi64>} : () -> tensor<3xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<*xf16>, tensor<3xi64>) -> tensor<*xf16>
    "onnx.Return"(%1) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

