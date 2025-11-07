"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<2x8x16xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<2x16xf16, #zhigh.layout<{dataLayout = "2DS"}>>) -> tensor<*xf16>, sym_name = "matmul_stack"}> ({
  ^bb0(%arg0: tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg1: tensor<2x8x16xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg2: tensor<2x16xf16, #zhigh.layout<{dataLayout = "2DS"}>>):
    %0 = "zhigh.MatMul"(%arg0, %arg1, %arg2) : (tensor<2x4x8xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<2x8x16xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<2x16xf16, #zhigh.layout<{dataLayout = "2DS"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

