"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<*xf32>, sym_name = "test_logsoftmax"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.LogSoftmax"(%arg0) {axis = 1 : si64} : (tensor<10x10xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

