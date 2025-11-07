"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<10x1x10xf32>, sym_name = "test_should_not_remove_unsqueezev11_squeezev11"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.UnsqueezeV11"(%arg0) {axes = [0, 2]} : (tensor<10x10xf32>) -> tensor<1x10x1x10xf32>
    %1 = "onnx.SqueezeV11"(%0) {axes = [0]} : (tensor<1x10x1x10xf32>) -> tensor<10x1x10xf32>
    "onnx.Return"(%1) : (tensor<10x1x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

