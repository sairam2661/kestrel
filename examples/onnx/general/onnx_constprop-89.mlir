"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x1xf32>, sym_name = "test_reduce_mean_f32"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00], [4.000000e+00, 6.000000e+00]]> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<i64>} : () -> tensor<i64>
    %2 = "onnx.ReduceMean"(%0, %1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<2x2xf32>, tensor<i64>) -> tensor<2x1xf32>
    "onnx.Return"(%2) : (tensor<2x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

