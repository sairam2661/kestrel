"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_squeezev11"}> ({
    %0 = "onnx.Constant"() {value = dense<[[[4.000000e+00]], [[1.600000e+01]]]> : tensor<2x1x1xf32>} : () -> tensor<2x1x1xf32>
    %1 = "onnx.SqueezeV11"(%0) {axes = [1, 2]} : (tensor<2x1x1xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

