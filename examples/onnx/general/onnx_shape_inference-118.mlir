"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x1x32x1x64xf32>) -> tensor<*xf32>, sym_name = "test_squeezev11_mix"}> ({
  ^bb0(%arg0: tensor<16x1x32x1x64xf32>):
    %0 = "onnx.SqueezeV11"(%arg0) {axes = [1, -2]} : (tensor<16x1x32x1x64xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

