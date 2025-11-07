"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<1x600x?xf32>, tensor<1x600x200xf32>, tensor<1x1200xf32>) -> (tensor<?x1x?x200xf32>, tensor<1x?x200xf32>), sym_name = "test_onnx_to_zhigh_gru0_dyn"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<1x600x?xf32>, %arg2: tensor<1x600x200xf32>, %arg3: tensor<1x1200xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %arg3, %0, %0) {activations = ["Sigmoid", "Tanh", "Tanh"], direction = "forward", hidden_size = 200 : si64, layout = 0 : si64, linear_before_reset = 1 : si64, onnx_node_name = "gru"} : (tensor<?x?x?xf32>, tensor<1x600x?xf32>, tensor<1x600x200xf32>, tensor<1x1200xf32>, none, none) -> (tensor<?x1x?x200xf32>, tensor<1x?x200xf32>)
    "func.return"(%1#0, %1#1) : (tensor<?x1x?x200xf32>, tensor<1x?x200xf32>) -> ()
  }) : () -> ()
}) : () -> ()

