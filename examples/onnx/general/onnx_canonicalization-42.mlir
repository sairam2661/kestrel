"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x1x10xf32>) -> tensor<10x1x10xf32>, sym_name = "test_remove_squeeze_unsqueeze"}> ({
  ^bb0(%arg0: tensor<10x1x10xf32>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Squeeze"(%arg0, %0) : (tensor<10x1x10xf32>, tensor<1xi64>) -> tensor<10x10xf32>
    %3 = "onnx.Unsqueeze"(%2, %1) : (tensor<10x10xf32>, tensor<1xi64>) -> tensor<10x1x10xf32>
    "onnx.Return"(%3) : (tensor<10x1x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

