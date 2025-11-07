"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x1xi32>, sym_name = "test_reduce_sum_all_axes"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.ReduceSum"(%0, %1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<2x2xi32>, tensor<2xi64>) -> tensor<1x1xi32>
    "onnx.Return"(%2) : (tensor<1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

