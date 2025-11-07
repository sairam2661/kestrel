"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<?x16xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<*xf16>, sym_name = "test_matmul_2d_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?xf16, #zhigh.layout<{dataLayout = "2D"}>>, %arg1: tensor<?x16xf16, #zhigh.layout<{dataLayout = "2D"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "zhigh.MatMul"(%arg0, %arg1, %0) : (tensor<?x?xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<?x16xf16, #zhigh.layout<{dataLayout = "2D"}>>, none) -> tensor<*xf16>
    "func.return"(%1) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

