"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "test_reduce_sum_scalar"}> ({
    %0 = "onnx.Constant"() {value = dense<42> : tensor<i32>} : () -> tensor<i32>
    %1 = "onnx.NoValue"() {value} : () -> none
    %2 = "onnx.ReduceSum"(%0, %1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<i32>, none) -> tensor<i32>
    "onnx.Return"(%2) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

