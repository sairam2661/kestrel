"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> (), sym_name = "test_splitV13"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.SplitV13"(%arg0, %0) {axis = 1 : si64} : (tensor<*xf32>, tensor<1xi64>) -> tensor<*xf32>
    "onnx.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

