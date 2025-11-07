"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2x3xf32>, tensor<2x4x3xf32>, tensor<2x4x4xf32>, tensor<2x8xf32>, tensor<2x2x4xf32>) -> tensor<*xf32>, sym_name = "test_rnn_bidirectional_mode", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<7x2x3xf32>, %arg1: tensor<2x4x3xf32>, %arg2: tensor<2x4x4xf32>, %arg3: tensor<2x8xf32>, %arg4: tensor<2x2x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.RNN"(%arg0, %arg1, %arg2, %arg3, %0, %arg4) {activations = ["Tanh", "Tanh"], direction = "bidirectional", hidden_size = 4 : si64, layout = 0 : si64} : (tensor<7x2x3xf32>, tensor<2x4x3xf32>, tensor<2x4x4xf32>, tensor<2x8xf32>, none, tensor<2x2x4xf32>) -> (none, tensor<*xf32>)
    "func.return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

