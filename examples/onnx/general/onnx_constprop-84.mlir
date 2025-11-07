"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x1xi32>, sym_name = "test_reduce_prod_positive_axis"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<i64>} : () -> tensor<i64>
    %2 = "onnx.ReduceProd"(%0, %1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<2x2xi32>, tensor<i64>) -> tensor<2x1xi32>
    "onnx.Return"(%2) : (tensor<2x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

