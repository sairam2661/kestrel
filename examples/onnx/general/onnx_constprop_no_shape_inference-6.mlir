"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x4x4xi32>, sym_name = "test_scatternd_i32"}> ({
    %0 = "onnx.Constant"() {name = "constant.0", value = dense<[[[1, 2, 3, 4], [5, 6, 7, 8], [8, 7, 6, 5], [4, 3, 2, 1]], [[1, 2, 3, 4], [5, 6, 7, 8], [8, 7, 6, 5], [4, 3, 2, 1]], [[8, 7, 6, 5], [4, 3, 2, 1], [1, 2, 3, 4], [5, 6, 7, 8]], [[8, 7, 6, 5], [4, 3, 2, 1], [1, 2, 3, 4], [5, 6, 7, 8]]]> : tensor<4x4x4xi32>} : () -> tensor<4x4x4xi32>
    %1 = "onnx.Constant"() {name = "constant.1", value = dense<[[0], [2]]> : tensor<2x1xi64>} : () -> tensor<2x1xi64>
    %2 = "onnx.Constant"() {name = "constant.2", value = dense<[[[5, 5, 5, 5], [6, 6, 6, 6], [7, 7, 7, 7], [8, 8, 8, 8]], [[1, 1, 1, 1], [2, 2, 2, 2], [3, 3, 3, 3], [4, 4, 4, 4]]]> : tensor<2x4x4xi32>} : () -> tensor<2x4x4xi32>
    %3 = "onnx.ScatterND"(%0, %1, %2) {node_name = "ScatterND_6467", node_type = "ScatterND", reduction = "none"} : (tensor<4x4x4xi32>, tensor<2x1xi64>, tensor<2x4x4xi32>) -> tensor<4x4x4xi32>
    "onnx.Return"(%3) : (tensor<4x4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

