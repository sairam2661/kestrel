"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<*xf32>, sym_name = "test_rnn_all_results_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?x?xf32>, %arg2: tensor<?x?x?xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.RNN"(%arg0, %arg1, %arg2, %0, %0, %0) {activations = ["Tanh", "Tanh"], direction = "forward", layout = 0 : si64} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>, none, none, none) -> (tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

