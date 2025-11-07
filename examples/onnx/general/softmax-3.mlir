"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<*xf32>, sym_name = "test_onnx_logsoftmax_dyn"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "onnx.Softmax"(%arg0) {axis = -1 : si64} : (tensor<?x?xf32>) -> tensor<*xf32>
    %1 = "onnx.Log"(%0) : (tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

