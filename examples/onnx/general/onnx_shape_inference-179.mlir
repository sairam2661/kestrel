"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>) -> tensor<*xf32>, sym_name = "test_reduce_sum_2"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ReduceSum"(%arg0, %0) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<1x2x3x4xf32>, none) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

