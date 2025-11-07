"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?xi64>) -> tensor<*xf32>, sym_name = "test_reducelogsumexp"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?xi64>):
    %0 = "onnx.ReduceLogSumExp"(%arg0, %arg1) {keepdims = 0 : si64, noop_with_empty_axes = 0 : si64} : (tensor<?x?x?xf32>, tensor<?xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

