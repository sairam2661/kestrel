"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf16>, tensor<1xi64>, tensor<*xf16>) -> tensor<?xi64>, sym_name = "test_if_true"}> ({
  ^bb0(%arg0: tensor<*xf16>, %arg1: tensor<1xi64>, %arg2: tensor<*xf16>):
    %0 = "onnx.Constant"() {value = dense<true> : tensor<1xi1>} : () -> tensor<1xi1>
    %1 = "onnx.If"(%0) ({
      %3 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
      %4 = "onnx.Squeeze"(%arg0, %arg1) : (tensor<*xf16>, tensor<1xi64>) -> tensor<?x?x?xf16>
      "onnx.Yield"(%4) : (tensor<?x?x?xf16>) -> ()
    }, {
      %3 = "onnx.Identity"(%arg2) : (tensor<*xf16>) -> tensor<?x?x?x?xf16>
      "onnx.Yield"(%3) : (tensor<?x?x?x?xf16>) -> ()
    }) : (tensor<1xi1>) -> tensor<*xf16>
    %2 = "onnx.Shape"(%1) {start = 0 : si64} : (tensor<*xf16>) -> tensor<?xi64>
    "onnx.Return"(%2) : (tensor<?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

