"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x5x9x11xf32>) -> tensor<2x5xf32>, sym_name = "reduce_mean_keepdims_false"}> ({
  ^bb0(%arg0: tensor<2x5x9x11xf32>):
    %0 = "onnx.Constant"() {value = dense<[2, 3]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.ReduceMean"(%arg0, %0) {keepdims = 0 : si64, noop_with_empty_axes = 0 : si64} : (tensor<2x5x9x11xf32>, tensor<2xi64>) -> tensor<2x5xf32>
    "func.return"(%1) : (tensor<2x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

