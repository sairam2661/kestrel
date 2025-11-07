"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x5x9x11xf32>) -> tensor<2x5x9x11xf32>, sym_name = "reduce_mean_noop_with_emtpy_axes_one_none_input"}> ({
  ^bb0(%arg0: tensor<2x5x9x11xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ReduceMean"(%arg0, %0) {keepdims = 1 : si64, noop_with_empty_axes = 1 : si64} : (tensor<2x5x9x11xf32>, none) -> tensor<2x5x9x11xf32>
    "func.return"(%1) : (tensor<2x5x9x11xf32>) -> ()
  }) : () -> ()
}) : () -> ()

