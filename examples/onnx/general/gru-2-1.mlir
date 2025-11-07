"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x7xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x5x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x7x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, tensor<1x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, tensor<1x9x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, tensor<1x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>) -> tensor<*xf16>, sym_name = "gru_return_all_steps"}> ({
  ^bb0(%arg0: tensor<3x5x7xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg1: tensor<1x5x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, %arg2: tensor<1x7x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, %arg3: tensor<1x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, %arg4: tensor<1x9x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, %arg5: tensor<1x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>):
    %0 = "zhigh.GRU"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) {direction = "forward", hidden_size = 9 : si64, return_all_steps = -1 : si64} : (tensor<3x5x7xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x5x9xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<1x7x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, tensor<1x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, tensor<1x9x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>, tensor<1x27xf16, #zhigh.layout<{dataLayout = "ZRH"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

