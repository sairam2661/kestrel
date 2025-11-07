"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3x2xf32>, tensor<1x12x2xf32>, tensor<1x12x3xf32>) -> none, sym_name = "test_lstm_no_results"}> ({
  ^bb0(%arg0: tensor<4x3x2xf32>, %arg1: tensor<1x12x2xf32>, %arg2: tensor<1x12x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %0, %0, %0, %0, %0) {direction = "forward", hidden_size = 3 : si64, input_forget = 0 : si64, layout = 0 : si64} : (tensor<4x3x2xf32>, tensor<1x12x2xf32>, tensor<1x12x3xf32>, none, none, none, none, none) -> (none, none, none)
    "onnx.Return"(%1#1) : (none) -> ()
  }) : () -> ()
}) : () -> ()

