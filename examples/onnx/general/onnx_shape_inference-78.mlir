"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3x2xf32>, tensor<1x3x2xf32>, tensor<1x3x3xf32>) -> none, sym_name = "test_rnn_no_results"}> ({
  ^bb0(%arg0: tensor<4x3x2xf32>, %arg1: tensor<1x3x2xf32>, %arg2: tensor<1x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.RNN"(%arg0, %arg1, %arg2, %0, %0, %0) {activations = ["Tanh", "Tanh"], direction = "forward", hidden_size = 3 : si64, layout = 0 : si64} : (tensor<4x3x2xf32>, tensor<1x3x2xf32>, tensor<1x3x3xf32>, none, none, none) -> (none, none)
    "onnx.Return"(%1#1) : (none) -> ()
  }) : () -> ()
}) : () -> ()

