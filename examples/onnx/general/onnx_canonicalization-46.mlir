"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10x1x10xf32>) -> tensor<10x1x10x1xf32>, sym_name = "test_should_not_remove_squeezev11_unsqueezev11"}> ({
  ^bb0(%arg0: tensor<1x10x1x10xf32>):
    %0 = "onnx.SqueezeV11"(%arg0) {axes = [0]} : (tensor<1x10x1x10xf32>) -> tensor<10x1x10xf32>
    %1 = "onnx.UnsqueezeV11"(%0) {axes = [3]} : (tensor<10x1x10xf32>) -> tensor<10x1x10x1xf32>
    "onnx.Return"(%1) : (tensor<10x1x10x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

