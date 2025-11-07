"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x2xf32>, sym_name = "test_sqrt"}> ({
    %0 = "onnx.Constant"() {value = dense<[[4.000000e+00, 1.600000e+01]]> : tensor<1x2xf32>} : () -> tensor<1x2xf32>
    %1 = "onnx.Sqrt"(%0) : (tensor<1x2xf32>) -> tensor<1x2xf32>
    "onnx.Return"(%1) : (tensor<1x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

