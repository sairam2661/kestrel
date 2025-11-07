"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x1x10xf32>) -> tensor<10x1x10xi64>, sym_name = "test_remove_squeeze_cast_unsqueeze"}> ({
  ^bb0(%arg0: tensor<10x1x10xf32>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Squeeze"(%arg0, %0) : (tensor<10x1x10xf32>, tensor<1xi64>) -> tensor<10x10xf32>
    %3 = "onnx.Cast"(%2) {saturate = 1 : si64, to = i64} : (tensor<10x10xf32>) -> tensor<10x10xi64>
    %4 = "onnx.Unsqueeze"(%3, %1) : (tensor<10x10xi64>, tensor<1xi64>) -> tensor<10x1x10xi64>
    "onnx.Return"(%4) : (tensor<10x1x10xi64>) -> ()
  }) : () -> ()
}) : () -> ()

