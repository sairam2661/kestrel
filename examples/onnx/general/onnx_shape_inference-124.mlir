"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32x64xf32>) -> tensor<*xf32>, sym_name = "test_unsqueeze_negative_axis"}> ({
  ^bb0(%arg0: tensor<16x32x64xf32>):
    %0 = "onnx.Constant"() {value = dense<-2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Unsqueeze"(%arg0, %0) : (tensor<16x32x64xf32>, tensor<1xi64>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

