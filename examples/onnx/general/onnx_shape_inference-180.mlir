"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>, tensor<2xi64>) -> tensor<*xf32>, sym_name = "test_reduce_sum_3"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>, %arg1: tensor<2xi64>):
    %0 = "onnx.ReduceSum"(%arg0, %arg1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<1x2x3x4xf32>, tensor<2xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

