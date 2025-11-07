"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>, tensor<?x3x5x1xf32, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>, sym_name = "test_onnx_add_ztensor"}> ({
  ^bb0(%arg0: tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>, %arg1: tensor<?x3x5x1xf32, #zhigh.layout<{dataLayout = "4D"}>>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>, tensor<?x3x5x1xf32, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>
    "func.return"(%0) : (tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

