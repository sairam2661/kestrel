"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>) -> tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>, sym_name = "test_layout_transform"}> ({
  ^bb0(%arg0: tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>):
    %0 = "onnx.LayoutTransform"(%arg0) {target_layout = #onnx.layout<{dataLayout = "NCHW4C"}>} : (tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>) -> tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>
    "onnx.Return"(%0) : (tensor<5x3x32x32xf32, #onnx.layout<{dataLayout = "NCHW4C"}>>) -> ()
  }) : () -> ()
}) : () -> ()

