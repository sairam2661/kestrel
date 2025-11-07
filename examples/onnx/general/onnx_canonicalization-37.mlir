"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "test_remove_unsqueeze_squeeze"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.Constant"() {value = dense<[0, 2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Constant"() {value = dense<[0, -2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Unsqueeze"(%arg0, %0) : (tensor<10x10xf32>, tensor<2xi64>) -> tensor<1x10x1x10xf32>
    %3 = "onnx.Squeeze"(%2, %1) : (tensor<1x10x1x10xf32>, tensor<2xi64>) -> tensor<10x10xf32>
    "onnx.Return"(%3) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

