"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<?x16xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<*xf16>, sym_name = "test_matmul_3d_broadcast_unknown_dims"}> ({
  ^bb0(%arg0: tensor<2x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg1: tensor<?x16xf16, #zhigh.layout<{dataLayout = "2D"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "zhigh.MatMul"(%arg0, %arg1, %0) : (tensor<2x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<?x16xf16, #zhigh.layout<{dataLayout = "2D"}>>, none) -> tensor<*xf16>
    "func.return"(%1) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

