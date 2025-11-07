"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x10xf32>, tensor<1x12x10xf32>, tensor<1x12x4xf32>, tensor<1x24xf32>, tensor<?xi32>, tensor<?x?x4xf32>) -> tensor<*xf32>, sym_name = "test_gru_input_dims"}> ({
  ^bb0(%arg0: tensor<?x?x10xf32>, %arg1: tensor<1x12x10xf32>, %arg2: tensor<1x12x4xf32>, %arg3: tensor<1x24xf32>, %arg4: tensor<?xi32>, %arg5: tensor<?x?x4xf32>):
    %0:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) {direction = "forward", hidden_size = 4 : si64, layout = 0 : si64, linear_before_reset = 0 : si64} : (tensor<?x?x10xf32>, tensor<1x12x10xf32>, tensor<1x12x4xf32>, tensor<1x24xf32>, tensor<?xi32>, tensor<?x?x4xf32>) -> (none, tensor<*xf32>)
    "func.return"(%0#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

