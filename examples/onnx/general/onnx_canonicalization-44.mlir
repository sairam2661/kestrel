"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x1x10xf32>) -> tensor<10x1x10xf32>, sym_name = "test_remove_squeezev11_unsqueezev11"}> ({
  ^bb0(%arg0: tensor<10x1x10xf32>):
    %0 = "onnx.SqueezeV11"(%arg0) {axes = [1]} : (tensor<10x1x10xf32>) -> tensor<10x10xf32>
    %1 = "onnx.UnsqueezeV11"(%0) {axes = [1]} : (tensor<10x10xf32>) -> tensor<10x1x10xf32>
    "onnx.Return"(%1) : (tensor<10x1x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

