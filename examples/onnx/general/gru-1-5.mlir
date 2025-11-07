"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2000x204xf32>, tensor<1x600x204xf32>, tensor<1x600x200xf32>, tensor<1x2000x200xf32>, tensor<1x2000x200xf32>) -> tensor<7x1x2000x200xf32>, sym_name = "test_gru_noB_noYh"}> ({
  ^bb0(%arg0: tensor<7x2000x204xf32>, %arg1: tensor<1x600x204xf32>, %arg2: tensor<1x600x200xf32>, %arg3: tensor<1x2000x200xf32>, %arg4: tensor<1x2000x200xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %0, %0, %arg3) {activations = ["Sigmoid", "Tanh", "Tanh"], direction = "forward", hidden_size = 200 : si64, layout = 0 : si64, linear_before_reset = 1 : si64, onnx_node_name = "gru"} : (tensor<7x2000x204xf32>, tensor<1x600x204xf32>, tensor<1x600x200xf32>, none, none, tensor<1x2000x200xf32>) -> (tensor<7x1x2000x200xf32>, none)
    "func.return"(%1#0) : (tensor<7x1x2000x200xf32>) -> ()
  }) : () -> ()
}) : () -> ()

