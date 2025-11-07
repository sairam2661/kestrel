"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<1x16x?xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, tensor<1x?x4xf32>, tensor<1x?x4xf32>, tensor<1x12xf32>) -> tensor<*xf32>, sym_name = "test_lstm_unknown_dims", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<1x16x?xf32>, %arg2: tensor<1x16x4xf32>, %arg3: tensor<1x32xf32>, %arg4: tensor<1x?x4xf32>, %arg5: tensor<1x?x4xf32>, %arg6: tensor<1x12xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %arg3, %0, %arg4, %arg5, %arg6) {direction = "forward", hidden_size = 4 : si64, input_forget = 0 : si64, layout = 0 : si64} : (tensor<?x?x?xf32>, tensor<1x16x?xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, none, tensor<1x?x4xf32>, tensor<1x?x4xf32>, tensor<1x12xf32>) -> (none, tensor<*xf32>, none)
    "func.return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

