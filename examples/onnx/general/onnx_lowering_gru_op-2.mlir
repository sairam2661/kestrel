"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2x3xf32>, tensor<1x2x4xf32>) -> tensor<*xf32>, sym_name = "test_gru_forward_mode_constant_weight_and_bias", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<7x2x3xf32>, %arg1: tensor<1x2x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<1x12x3xf32>} : () -> tensor<1x12x3xf32>
    %2 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1x12x4xf32>} : () -> tensor<1x12x4xf32>
    %3 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00, 9.000000e+00, 1.000000e+01, 1.100000e+01, 1.200000e+01, 1.300000e+01, 1.400000e+01, 1.500000e+01, 1.600000e+01, 1.700000e+01, 1.800000e+01, 1.900000e+01, 2.000000e+01, 2.100000e+01, 2.200000e+01, 2.300000e+01, 2.400000e+01]]> : tensor<1x24xf32>} : () -> tensor<1x24xf32>
    %4:2 = "onnx.GRU"(%arg0, %1, %2, %3, %0, %arg1) {direction = "forward", hidden_size = 4 : si64, layout = 0 : si64, linear_before_reset = 0 : si64} : (tensor<7x2x3xf32>, tensor<1x12x3xf32>, tensor<1x12x4xf32>, tensor<1x24xf32>, none, tensor<1x2x4xf32>) -> (none, tensor<*xf32>)
    "func.return"(%4#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

