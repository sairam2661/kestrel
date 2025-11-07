"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4x2xf32>, tensor<1x9x2xf32>, tensor<1x9x3xf32>) -> (tensor<5x4x1x3xf32>, tensor<5x1x3xf32>), sym_name = "test_gru_layout1"}> ({
  ^bb0(%arg0: tensor<5x4x2xf32>, %arg1: tensor<1x9x2xf32>, %arg2: tensor<1x9x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %0, %0, %0) {direction = "forward", layout = 1 : si64, linear_before_reset = 0 : si64} : (tensor<5x4x2xf32>, tensor<1x9x2xf32>, tensor<1x9x3xf32>, none, none, none) -> (tensor<5x4x1x3xf32>, tensor<5x1x3xf32>)
    "onnx.Return"(%1#0, %1#1) : (tensor<5x4x1x3xf32>, tensor<5x1x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

