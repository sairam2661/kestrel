"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x1xf32>, sym_name = "test_reduce_prod_empty"}> ({
    %0 = "onnx.Constant"() {value = dense<> : tensor<0x2xf32>} : () -> tensor<0x2xf32>
    %1 = "onnx.NoValue"() {value} : () -> none
    %2 = "onnx.ReduceProd"(%0, %1) {keepdims = 1 : si64, noop_with_empty_axes = 0 : si64} : (tensor<0x2xf32>, none) -> tensor<1x1xf32>
    "onnx.Return"(%2) : (tensor<1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

