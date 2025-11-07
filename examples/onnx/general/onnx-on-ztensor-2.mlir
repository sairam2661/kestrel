"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x4x192xf32, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<?x4x4x192xf32, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x4x4x384xf32, #zhigh.layout<{dataLayout = "NHWC"}>>, sym_name = "test_onnx_concat_on_ztensor"}> ({
  ^bb0(%arg0: tensor<?x4x4x192xf32, #zhigh.layout<{dataLayout = "NHWC"}>>, %arg1: tensor<?x4x4x192xf32, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "onnx.Concat"(%arg0, %arg1) {axis = 3 : si64} : (tensor<?x4x4x192xf32, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<?x4x4x192xf32, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x4x4x384xf32, #zhigh.layout<{dataLayout = "NHWC"}>>
    "func.return"(%0) : (tensor<?x4x4x384xf32, #zhigh.layout<{dataLayout = "NHWC"}>>) -> ()
  }) : () -> ()
}) : () -> ()

