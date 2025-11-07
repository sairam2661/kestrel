"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2xi32>, sym_name = "test_reduce_sum_keedims_false"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<i64>} : () -> tensor<i64>
    %2 = "onnx.ReduceSum"(%0, %1) {keepdims = 0 : si64, noop_with_empty_axes = 0 : si64} : (tensor<2x2xi32>, tensor<i64>) -> tensor<2xi32>
    "onnx.Return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

