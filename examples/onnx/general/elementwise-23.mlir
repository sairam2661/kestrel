"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<*xf16>, sym_name = "exp_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Exp"(%arg0) : (tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

