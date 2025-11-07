"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<*xf16>, sym_name = "should_lower_to_zlow"}> ({
  ^bb0(%arg0: tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Tanh"(%arg0) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

