"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2000x204xf32>, tensor<1x32643x204xf32>, tensor<1x32643x10881xf32>, tensor<1x65280xf32>) -> (tensor<7x1x2000x10881xf32>, tensor<1x2000x10881xf32>), sym_name = "test_onnx_to_zhigh_gru_exceed_num_hidden"}> ({
  ^bb0(%arg0: tensor<7x2000x204xf32>, %arg1: tensor<1x32643x204xf32>, %arg2: tensor<1x32643x10881xf32>, %arg3: tensor<1x65280xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %arg3, %0, %0) {activations = ["Sigmoid", "Tanh", "Tanh"], direction = "forward", hidden_size = 10881 : si64, layout = 0 : si64, linear_before_reset = 1 : si64, onnx_node_name = "gru"} : (tensor<7x2000x204xf32>, tensor<1x32643x204xf32>, tensor<1x32643x10881xf32>, tensor<1x65280xf32>, none, none) -> (tensor<7x1x2000x10881xf32>, tensor<1x2000x10881xf32>)
    "func.return"(%1#0, %1#1) : (tensor<7x1x2000x10881xf32>, tensor<1x2000x10881xf32>) -> ()
  }) : () -> ()
}) : () -> ()

