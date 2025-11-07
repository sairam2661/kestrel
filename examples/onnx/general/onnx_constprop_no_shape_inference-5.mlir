"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<8xf32>, sym_name = "test_scatternd_f32"}> ({
    %0 = "onnx.Constant"() {name = "constant.0", value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00]> : tensor<8xf32>} : () -> tensor<8xf32>
    %1 = "onnx.Constant"() {name = "constant.1", value = dense<[[4], [3], [1], [7]]> : tensor<4x1xi64>} : () -> tensor<4x1xi64>
    %2 = "onnx.Constant"() {name = "constant.2", value = dense<[9.000000e+00, 1.000000e+01, 1.100000e+01, 1.200000e+01]> : tensor<4xf32>} : () -> tensor<4xf32>
    %3 = "onnx.ScatterND"(%0, %1, %2) {node_name = "ScatterND_6467", node_type = "ScatterND", reduction = "none"} : (tensor<8xf32>, tensor<4x1xi64>, tensor<4xf32>) -> tensor<8xf32>
    "onnx.Return"(%3) : (tensor<8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

