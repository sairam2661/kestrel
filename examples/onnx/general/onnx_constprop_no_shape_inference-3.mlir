"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<1x10xf32>, tensor<1x10xf32>), sym_name = "test_splitv11_axis_0_no_splitattr"}> ({
    %0 = "onnx.Constant"() {value = dense<[[0.000000e+00, 1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00, 9.000000e+00], [1.000000e+01, 1.100000e+01, 1.200000e+01, 1.300000e+01, 1.400000e+01, 1.500000e+01, 1.600000e+01, 1.700000e+01, 1.800000e+01, 1.900000e+01]]> : tensor<2x10xf32>} : () -> tensor<2x10xf32>
    %1:2 = "onnx.SplitV11"(%0) {axis = 0 : si64} : (tensor<2x10xf32>) -> (tensor<1x10xf32>, tensor<1x10xf32>)
    "onnx.Return"(%1#0, %1#1) : (tensor<1x10xf32>, tensor<1x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

