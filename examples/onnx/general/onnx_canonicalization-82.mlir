"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x32x32xf32>) -> tensor<5x3x32x32xf32>, sym_name = "test_layout_transform_fusion"}> ({
  ^bb0(%arg0: tensor<5x3x32x32xf32>):
    %0 = "onnx.LayoutTransform"(%arg0) {target_layout = #onnx.layout<{dataLayout = "NCHW4C"}>} : (tensor<5x3x32x32xf32>) -> tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>
    %1 = "onnx.LayoutTransform"(%0) : (tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>) -> tensor<5x3x32x32xf32>
    "onnx.Return"(%1) : (tensor<5x3x32x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

