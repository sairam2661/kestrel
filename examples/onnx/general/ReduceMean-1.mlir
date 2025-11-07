"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x5x9x11xf32>) -> tensor<1x1x1x1xf32>, sym_name = "reduce_mean_no_axes_attr"}> ({
  ^bb0(%arg0: tensor<2x5x9x11xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ReduceMean"(%arg0, %0) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<2x5x9x11xf32>, none) -> tensor<1x1x1x1xf32>
    "func.return"(%1) : (tensor<1x1x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

