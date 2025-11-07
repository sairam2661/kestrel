"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4x2xf32>, tensor<1x12x2xf32>, tensor<1x12x3xf32>) -> tensor<*xf32>, sym_name = "test_lstm_layout1"}> ({
  ^bb0(%arg0: tensor<5x4x2xf32>, %arg1: tensor<1x12x2xf32>, %arg2: tensor<1x12x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %0, %0, %0, %0, %0) {direction = "forward", hidden_size = 3 : si64, input_forget = 0 : si64, layout = 1 : si64} : (tensor<5x4x2xf32>, tensor<1x12x2xf32>, tensor<1x12x3xf32>, none, none, none, none, none) -> (tensor<*xf32>, tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

