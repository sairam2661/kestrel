"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>, sym_name = "test_onnx_sqrt_ztensor"}> ({
  ^bb0(%arg0: tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>):
    %0 = "onnx.Sqrt"(%arg0) : (tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>
    "func.return"(%0) : (tensor<?x3x5x7xf32, #zhigh.layout<{dataLayout = "4D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

