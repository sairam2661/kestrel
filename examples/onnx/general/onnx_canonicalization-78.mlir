"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<1x4x3xf32>, tensor<1x4x4xf32>, tensor<1x8xf32>, tensor<?xi32>, tensor<1x1x4xf32>) -> tensor<*xf32>, sym_name = "test_rnn_seq_lens_bs1_in_initial_h"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<1x4x3xf32>, %arg2: tensor<1x4x4xf32>, %arg3: tensor<1x8xf32>, %arg4: tensor<?xi32>, %arg5: tensor<1x1x4xf32>):
    %0:2 = "onnx.RNN"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) {activations = ["Tanh", "Tanh"], direction = "forward", hidden_size = 4 : si64, layout = 0 : si64} : (tensor<*xf32>, tensor<1x4x3xf32>, tensor<1x4x4xf32>, tensor<1x8xf32>, tensor<?xi32>, tensor<1x1x4xf32>) -> (none, tensor<*xf32>)
    "func.return"(%0#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

