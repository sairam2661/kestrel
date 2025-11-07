"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3x2xf32>, tensor<1x9x2xf32>, tensor<1x9x3xf32>) -> none, sym_name = "test_gru_missing_trailing_result"}> ({
  ^bb0(%arg0: tensor<4x3x2xf32>, %arg1: tensor<1x9x2xf32>, %arg2: tensor<1x9x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %0, %0, %0) {direction = "forward", hidden_size = 3 : si64, layout = 0 : si64, linear_before_reset = 0 : si64} : (tensor<4x3x2xf32>, tensor<1x9x2xf32>, tensor<1x9x3xf32>, none, none, none) -> (tensor<*xf32>, none)
    "onnx.Return"(%1#1) : (none) -> ()
  }) : () -> ()
}) : () -> ()

