"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<2x8x16xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<*xf16>, sym_name = "test_matmul_3d_stack"}> ({
  ^bb0(%arg0: tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg1: tensor<2x8x16xf16, #zhigh.layout<{dataLayout = "3DS"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "zhigh.MatMul"(%arg0, %arg1, %0) : (tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<2x8x16xf16, #zhigh.layout<{dataLayout = "3DS"}>>, none) -> tensor<*xf16>
    "func.return"(%1) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

