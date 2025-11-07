"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10x1x10xf32>) -> tensor<10x1x10x1xf32>, sym_name = "test_should_not_remove_squeeze_unsqueeze"}> ({
  ^bb0(%arg0: tensor<1x10x1x10xf32>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<3> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Squeeze"(%arg0, %0) : (tensor<1x10x1x10xf32>, tensor<1xi64>) -> tensor<10x1x10xf32>
    %3 = "onnx.Unsqueeze"(%2, %1) : (tensor<10x1x10xf32>, tensor<1xi64>) -> tensor<10x1x10x1xf32>
    "onnx.Return"(%3) : (tensor<10x1x10x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

