"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2x3xf32>, tensor<1x2x4xf32>) -> tensor<*xf32>, sym_name = "test_rnn_forward_mode_constant_weight_and_bias", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<7x2x3xf32>, %arg1: tensor<1x2x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<1x4x3xf32>} : () -> tensor<1x4x3xf32>
    %2 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1x4x4xf32>} : () -> tensor<1x4x4xf32>
    %3 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00]]> : tensor<1x8xf32>} : () -> tensor<1x8xf32>
    %4:2 = "onnx.RNN"(%arg0, %1, %2, %3, %0, %arg1) {activations = ["Tanh", "Tanh"], direction = "forward", hidden_size = 4 : si64, layout = 0 : si64} : (tensor<7x2x3xf32>, tensor<1x4x3xf32>, tensor<1x4x4xf32>, tensor<1x8xf32>, none, tensor<1x2x4xf32>) -> (none, tensor<*xf32>)
    "func.return"(%4#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

