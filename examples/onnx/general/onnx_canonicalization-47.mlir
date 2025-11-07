"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10x1x10xf32>) -> tensor<10x1x10x1xf32>, sym_name = "test_should_not_remove_null_axes_squeeze_unsqueeze"}> ({
  ^bb0(%arg0: tensor<1x10x1x10xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[1, 3]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Squeeze"(%arg0, %0) : (tensor<1x10x1x10xf32>, none) -> tensor<10x10xf32>
    %3 = "onnx.Unsqueeze"(%2, %1) : (tensor<10x10xf32>, tensor<2xi64>) -> tensor<10x1x10x1xf32>
    "onnx.Return"(%3) : (tensor<10x1x10x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

