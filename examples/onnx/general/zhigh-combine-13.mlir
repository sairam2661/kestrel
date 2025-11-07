"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1xi64>, sym_name = "test_unstick_dim_nchw"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<?x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x?x?x?xf32>
    %1 = "onnx.Dim"(%0) {axis = 1 : si64} : (tensor<?x?x?x?xf32>) -> tensor<1xi64>
    "func.return"(%1) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

