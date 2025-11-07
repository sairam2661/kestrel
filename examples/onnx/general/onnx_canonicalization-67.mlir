"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4x2xf32>, tensor<1x3x2xf32>, tensor<1x3x3xf32>, tensor<5x1x3xf32>) -> tensor<5x1x3xf32>, sym_name = "test_rnn_layout1"}> ({
  ^bb0(%arg0: tensor<5x4x2xf32>, %arg1: tensor<1x3x2xf32>, %arg2: tensor<1x3x3xf32>, %arg3: tensor<5x1x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.RNN"(%arg0, %arg1, %arg2, %0, %0, %arg3) {activations = ["Tanh", "Tanh"], direction = "forward", layout = 1 : si64} : (tensor<5x4x2xf32>, tensor<1x3x2xf32>, tensor<1x3x3xf32>, none, none, tensor<5x1x3xf32>) -> (tensor<5x4x1x3xf32>, tensor<5x1x3xf32>)
    "onnx.Return"(%1#1) : (tensor<5x1x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

