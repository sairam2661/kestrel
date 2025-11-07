"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x32x?x64xf32>) -> tensor<*xf32>, sym_name = "test_squeezev11_unknown_dimensions", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x1x32x?x64xf32>):
    %0 = "onnx.SqueezeV11"(%arg0) {axes = [1, -2]} : (tensor<?x1x32x?x64xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

