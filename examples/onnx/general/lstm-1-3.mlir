"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2000x204xf32>, tensor<1x800x204xf32>, tensor<1x800x200xf32>, tensor<1x1600xf32>, tensor<1x2000x200xf32>, tensor<1x2000x200xf32>) -> (tensor<7x1x2000x200xf32>, tensor<1x2000x200xf32>, tensor<1x2000x200xf32>), sym_name = "test_lstm_in_ccfd1"}> ({
  ^bb0(%arg0: tensor<7x2000x204xf32>, %arg1: tensor<1x800x204xf32>, %arg2: tensor<1x800x200xf32>, %arg3: tensor<1x1600xf32>, %arg4: tensor<1x2000x200xf32>, %arg5: tensor<1x2000x200xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %arg3, %0, %arg4, %arg5, %0) {activations = ["Sigmoid", "Tanh", "Tanh"], direction = "forward", hidden_size = 200 : si64, input_forget = 0 : si64, layout = 0 : si64, onnx_node_name = "lstm"} : (tensor<7x2000x204xf32>, tensor<1x800x204xf32>, tensor<1x800x200xf32>, tensor<1x1600xf32>, none, tensor<1x2000x200xf32>, tensor<1x2000x200xf32>, none) -> (tensor<7x1x2000x200xf32>, tensor<1x2000x200xf32>, tensor<1x2000x200xf32>)
    "func.return"(%1#0, %1#1, %1#2) : (tensor<7x1x2000x200xf32>, tensor<1x2000x200xf32>, tensor<1x2000x200xf32>) -> ()
  }) : () -> ()
}) : () -> ()

