"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2000x204xf32>, tensor<1x32768x204xf32>, tensor<1x32768x8193xf32>, tensor<1x65544xf32>) -> (tensor<7x1x2000x8193xf32>, tensor<1x2000x8193xf32>, tensor<1x2000x8193xf32>), sym_name = "test_onnx_to_zhigh_lstm_exceed_num_hidden"}> ({
  ^bb0(%arg0: tensor<7x2000x204xf32>, %arg1: tensor<1x32768x204xf32>, %arg2: tensor<1x32768x8193xf32>, %arg3: tensor<1x65544xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %arg3, %0, %0, %0, %0) {activations = ["Sigmoid", "Tanh", "Tanh"], direction = "forward", hidden_size = 8193 : si64, input_forget = 0 : si64, layout = 0 : si64, onnx_node_name = "lstm"} : (tensor<7x2000x204xf32>, tensor<1x32768x204xf32>, tensor<1x32768x8193xf32>, tensor<1x65544xf32>, none, none, none, none) -> (tensor<7x1x2000x8193xf32>, tensor<1x2000x8193xf32>, tensor<1x2000x8193xf32>)
    "func.return"(%1#0, %1#1, %1#2) : (tensor<7x1x2000x8193xf32>, tensor<1x2000x8193xf32>, tensor<1x2000x8193xf32>) -> ()
  }) : () -> ()
}) : () -> ()

