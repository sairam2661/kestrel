"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>) -> tensor<*xi32>, sym_name = "test_scatternd_int32"}> ({
  ^bb0(%arg0: tensor<8xi32>):
    %0 = "onnx.Constant"() {value = dense<[[4], [3], [1], [7]]> : tensor<4x1xi64>} : () -> tensor<4x1xi64>
    %1 = "onnx.Constant"() {value = dense<[9, 10, 11, 12]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "onnx.ScatterND"(%arg0, %0, %1) {reduction = "none"} : (tensor<8xi32>, tensor<4x1xi64>, tensor<4xi32>) -> tensor<*xi32>
    "onnx.Return"(%2) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

