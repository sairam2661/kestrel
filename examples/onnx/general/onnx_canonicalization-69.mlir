"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4x2xf32>, tensor<1x12x2xf32>, tensor<1x12x3xf32>, tensor<5x1x3xf32>) -> tensor<5x1x3xf32>, sym_name = "test_lstm_layout1"}> ({
  ^bb0(%arg0: tensor<5x4x2xf32>, %arg1: tensor<1x12x2xf32>, %arg2: tensor<1x12x3xf32>, %arg3: tensor<5x1x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %0, %0, %0, %arg3, %0) {direction = "forward", input_forget = 0 : si64, layout = 1 : si64} : (tensor<5x4x2xf32>, tensor<1x12x2xf32>, tensor<1x12x3xf32>, none, none, none, tensor<5x1x3xf32>, none) -> (tensor<5x4x1x3xf32>, none, tensor<5x1x3xf32>)
    "onnx.Return"(%1#2) : (tensor<5x1x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

