"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x2xf32>, tensor<1x15x2xf32>, tensor<1x15x5xf32>) -> tensor<1x3x5xf32>, sym_name = "gru_default_backend"}> ({
  ^bb0(%arg0: tensor<1x3x2xf32>, %arg1: tensor<1x15x2xf32>, %arg2: tensor<1x15x5xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %0, %0, %0) {direction = "forward", hidden_size = 5 : si64, layout = 0 : si64, linear_before_reset = 0 : si64} : (tensor<1x3x2xf32>, tensor<1x15x2xf32>, tensor<1x15x5xf32>, none, none, none) -> (none, tensor<1x3x5xf32>)
    "func.return"(%1#1) : (tensor<1x3x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

