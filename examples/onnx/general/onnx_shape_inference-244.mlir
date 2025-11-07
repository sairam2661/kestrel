"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4x4xf32>) -> tensor<*xf32>, sym_name = "test_scatternd_float32"}> ({
  ^bb0(%arg0: tensor<4x4x4xf32>):
    %0 = "onnx.Constant"() {value = dense<[[0], [2]]> : tensor<2x1xi64>} : () -> tensor<2x1xi64>
    %1 = "onnx.Constant"() {value = dense<[[[5.000000e+00, 5.000000e+00, 5.000000e+00, 5.000000e+00], [6.000000e+00, 6.000000e+00, 6.000000e+00, 6.000000e+00], [7.000000e+00, 7.000000e+00, 7.000000e+00, 7.000000e+00], [8.000000e+00, 8.000000e+00, 8.000000e+00, 8.000000e+00]], [[1.000000e+00, 1.000000e+00, 1.000000e+00, 1.000000e+00], [2.000000e+00, 2.000000e+00, 2.000000e+00, 2.000000e+00], [3.000000e+00, 3.000000e+00, 3.000000e+00, 3.000000e+00], [4.000000e+00, 4.000000e+00, 4.000000e+00, 4.000000e+00]]]> : tensor<2x4x4xf32>} : () -> tensor<2x4x4xf32>
    %2 = "onnx.ScatterND"(%arg0, %0, %1) {reduction = "none"} : (tensor<4x4x4xf32>, tensor<2x1xi64>, tensor<2x4x4xf32>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

