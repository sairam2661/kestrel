"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<1x800x?xf32>, tensor<1x800x200xf32>, tensor<1x1600xf32>) -> (tensor<?x1x?x200xf32>, tensor<1x?x200xf32>, tensor<1x?x200xf32>), sym_name = "test_onnx_to_zhigh_ccfd0_dyn"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<1x800x?xf32>, %arg2: tensor<1x800x200xf32>, %arg3: tensor<1x1600xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:3 = "onnx.LSTM"(%arg0, %arg1, %arg2, %arg3, %0, %0, %0, %0) {activations = ["Sigmoid", "Tanh", "Tanh"], direction = "forward", hidden_size = 200 : si64, input_forget = 0 : si64, layout = 0 : si64, onnx_node_name = "lstm"} : (tensor<?x?x?xf32>, tensor<1x800x?xf32>, tensor<1x800x200xf32>, tensor<1x1600xf32>, none, none, none, none) -> (tensor<?x1x?x200xf32>, tensor<1x?x200xf32>, tensor<1x?x200xf32>)
    "func.return"(%1#0, %1#1, %1#2) : (tensor<?x1x?x200xf32>, tensor<1x?x200xf32>, tensor<1x?x200xf32>) -> ()
  }) : () -> ()
}) : () -> ()

