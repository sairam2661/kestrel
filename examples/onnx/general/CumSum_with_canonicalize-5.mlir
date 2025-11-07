"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf64>, tensor<i32>) -> tensor<*xf64>, sym_name = "test_cumsum_dynamic_axis_reverse_mode"}> ({
  ^bb0(%arg0: tensor<2x3xf64>, %arg1: tensor<i32>):
    %0 = "onnx.CumSum"(%arg0, %arg1) {exclusive = 0 : si64, reverse = 1 : si64} : (tensor<2x3xf64>, tensor<i32>) -> tensor<*xf64>
    "func.return"(%0) : (tensor<*xf64>) -> ()
  }) : () -> ()
}) : () -> ()

