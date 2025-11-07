"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x7xf32, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x5x7xf32, #zhigh.layout<{dataLayout = "3DS"}>>, sym_name = "test_onnx_layout_transform_on_ztensor"}> ({
  ^bb0(%arg0: tensor<3x5x7xf32, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "onnx.LayoutTransform"(%arg0) {target_layout = #zhigh.layout<{dataLayout = "3D"}>} : (tensor<3x5x7xf32, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x5x7xf32, #zhigh.layout<{dataLayout = "3DS"}>>
    "func.return"(%0) : (tensor<3x5x7xf32, #zhigh.layout<{dataLayout = "3DS"}>>) -> ()
  }) : () -> ()
}) : () -> ()

