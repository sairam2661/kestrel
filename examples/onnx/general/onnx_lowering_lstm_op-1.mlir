"builtin.module"() ({
  "func.func"() <{function_type = (tensor<7x2x3xf32>, tensor<1x2x4xf32>, tensor<1x2x4xf32>) -> tensor<*xf32>, sym_name = "test_lstm_forward_mode_constant_weight_and_bias", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<7x2x3xf32>, %arg1: tensor<1x2x4xf32>, %arg2: tensor<1x2x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<1x16x3xf32>} : () -> tensor<1x16x3xf32>
    %2 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1x16x4xf32>} : () -> tensor<1x16x4xf32>
    %3 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00, 9.000000e+00, 1.000000e+01, 1.100000e+01, 1.200000e+01, 1.300000e+01, 1.400000e+01, 1.500000e+01, 1.600000e+01, 1.700000e+01, 1.800000e+01, 1.900000e+01, 2.000000e+01, 2.100000e+01, 2.200000e+01, 2.300000e+01, 2.400000e+01, 2.500000e+01, 2.600000e+01, 2.700000e+01, 2.800000e+01, 2.900000e+01, 3.000000e+01, 3.100000e+01, 3.200000e+01]]> : tensor<1x32xf32>} : () -> tensor<1x32xf32>
    %4 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00, 9.000000e+00, 1.000000e+01, 1.100000e+01, 1.200000e+01]]> : tensor<1x12xf32>} : () -> tensor<1x12xf32>
    %5:3 = "onnx.LSTM"(%arg0, %1, %2, %3, %0, %arg1, %arg2, %4) {direction = "forward", hidden_size = 4 : si64, input_forget = 0 : si64, layout = 0 : si64} : (tensor<7x2x3xf32>, tensor<1x16x3xf32>, tensor<1x16x4xf32>, tensor<1x32xf32>, none, tensor<1x2x4xf32>, tensor<1x2x4xf32>, tensor<1x12xf32>) -> (none, tensor<*xf32>, none)
    "func.return"(%5#1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

