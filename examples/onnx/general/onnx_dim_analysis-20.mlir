"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x10xf32>, tensor<1x16x10xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, tensor<?xi32>, tensor<?x?x4xf32>, tensor<?x?x4xf32>) -> tensor<*xf32>, sym_name = "test_lstm_input_dims"}> ({
  ^bb0(%arg0: tensor<?x?x10xf32>, %arg1: tensor<1x16x10xf32>, %arg2: tensor<1x16x4xf32>, %arg3: tensor<1x32xf32>, %arg4: tensor<?xi32>, %arg5: tensor<?x?x4xf32>, %arg6: tensor<?x?x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %0) {direction = "forward", hidden_size = 4 : si64, input_forget = 0 : si64, layout = 0 : si64} : (tensor<?x?x10xf32>, tensor<1x16x10xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, tensor<?xi32>, tensor<?x?x4xf32>, tensor<?x?x4xf32>, none) -> (none, tensor<*xf32>, none)
    "func.return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

