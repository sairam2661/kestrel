"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<1x4x?xf32>, tensor<1x4x4xf32>, tensor<1x8xf32>, tensor<1x?x4xf32>) -> tensor<*xf32>, sym_name = "test_rnn_unknown_dims", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<1x4x?xf32>, %arg2: tensor<1x4x4xf32>, %arg3: tensor<1x8xf32>, %arg4: tensor<1x?x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.RNN"(%arg0, %arg1, %arg2, %arg3, %0, %arg4) {activations = ["Tanh", "Tanh"], direction = "forward", hidden_size = 4 : si64, layout = 0 : si64} : (tensor<?x?x?xf32>, tensor<1x4x?xf32>, tensor<1x4x4xf32>, tensor<1x8xf32>, none, tensor<1x?x4xf32>) -> (none, tensor<*xf32>)
    "func.return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

