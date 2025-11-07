"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf16>, tensor<3xi64>) -> tensor<*xf16>, sym_name = "test_reshape_unrank_1"}> ({
  ^bb0(%arg0: tensor<*xf16>, %arg1: tensor<3xi64>):
    %0 = "onnx.Reshape"(%arg0, %arg1) {allowzero = 0 : si64} : (tensor<*xf16>, tensor<3xi64>) -> tensor<*xf16>
    "onnx.Return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

