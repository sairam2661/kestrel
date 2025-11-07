"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<1x16x3xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, tensor<1xi32>, tensor<1x?x4xf32>) -> tensor<*xf32>, sym_name = "test_lstm_seq_lens_bs1_in_seq_lens"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<1x16x3xf32>, %arg2: tensor<1x16x4xf32>, %arg3: tensor<1x32xf32>, %arg4: tensor<1xi32>, %arg5: tensor<1x?x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %0, %0) {direction = "forward", hidden_size = 4 : si64, input_forget = 0 : si64, layout = 0 : si64} : (tensor<*xf32>, tensor<1x16x3xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, tensor<1xi32>, tensor<1x?x4xf32>, none, none) -> (none, tensor<*xf32>, none)
    "func.return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

