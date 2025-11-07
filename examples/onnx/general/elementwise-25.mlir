"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<*xf16>, sym_name = "softmax_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>):
    %0 = "zhigh.Softmax"(%arg0) : (tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

