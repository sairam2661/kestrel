"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<*xi64>, sym_name = "test_default_argmax"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.ArgMax"(%arg0) {axis = 0 : si64, keepdims = 1 : si64, select_last_index = 0 : si64} : (tensor<2x3x4xf32>) -> tensor<*xi64>
    "onnx.Return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

