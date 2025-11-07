"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>, tensor<4xf32>) -> tensor<*xf32>, sym_name = "test_resizev10"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>, %arg1: tensor<4xf32>):
    %0 = "onnx.ResizeV10"(%arg0, %arg1) {mode = "nearest"} : (tensor<1x2x3x4xf32>, tensor<4xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

