"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x1xi32>, sym_name = "test_reduce_sum_empty"}> ({
    %0 = "onnx.Constant"() {value = dense<> : tensor<0x2xi32>} : () -> tensor<0x2xi32>
    %1 = "onnx.NoValue"() {value} : () -> none
    %2 = "onnx.ReduceSum"(%0, %1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<0x2xi32>, none) -> tensor<1x1xi32>
    "onnx.Return"(%2) : (tensor<1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

