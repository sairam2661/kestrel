"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x1x32xf32>) -> tensor<*xi64>, sym_name = "test_argmax_verifier_1"}> ({
  ^bb0(%arg0: tensor<5x5x1x32xf32>):
    %0 = "onnx.ArgMax"(%arg0) {axis = -1 : si64, keepdims = 1 : si64, select_last_index = 0 : si64} : (tensor<5x5x1x32xf32>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

