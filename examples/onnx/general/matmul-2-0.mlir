"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<8x16xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<16xf16, #zhigh.layout<{dataLayout = "1D"}>>) -> tensor<*xf16>, sym_name = "matmul"}> ({
  ^bb0(%arg0: tensor<4x8xf16, #zhigh.layout<{dataLayout = "2D"}>>, %arg1: tensor<8x16xf16, #zhigh.layout<{dataLayout = "2D"}>>, %arg2: tensor<16xf16, #zhigh.layout<{dataLayout = "1D"}>>):
    %0 = "zhigh.MatMul"(%arg0, %arg1, %arg2) : (tensor<4x8xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<8x16xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<16xf16, #zhigh.layout<{dataLayout = "1D"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

