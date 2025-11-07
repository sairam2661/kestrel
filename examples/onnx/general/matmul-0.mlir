"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<8x16xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<*xf16>, sym_name = "test_matmul_2d"}> ({
  ^bb0(%arg0: tensor<4x8xf16, #zhigh.layout<{dataLayout = "2D"}>>, %arg1: tensor<8x16xf16, #zhigh.layout<{dataLayout = "2D"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "zhigh.MatMul"(%arg0, %arg1, %0) : (tensor<4x8xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<8x16xf16, #zhigh.layout<{dataLayout = "2D"}>>, none) -> tensor<*xf16>
    "func.return"(%1) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

