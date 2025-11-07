"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<*xf32>, sym_name = "test_gru_all_results_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?x?xf32>, %arg2: tensor<?x?x?xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.GRU"(%arg0, %arg1, %arg2, %0, %0, %0) {direction = "forward", layout = 0 : si64, linear_before_reset = 0 : si64} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>, none, none, none) -> (tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%1#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

