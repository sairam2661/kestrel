"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf64>) -> tensor<*xf64>, sym_name = "test_cumsum_constant_axis_reverse_mode"}> ({
  ^bb0(%arg0: tensor<2x3xf64>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
    %1 = "onnx.CumSum"(%arg0, %0) {exclusive = 0 : si64, reverse = 1 : si64} : (tensor<2x3xf64>, tensor<i32>) -> tensor<*xf64>
    "func.return"(%1) : (tensor<*xf64>) -> ()
  }) : () -> ()
}) : () -> ()

