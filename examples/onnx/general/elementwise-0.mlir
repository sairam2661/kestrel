"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x?xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>, sym_name = "test_default_unary_elementwise_user_shape_1"}> ({
  ^bb0(%arg0: tensor<3x4x?xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Sigmoid"(%arg0) : (tensor<3x4x?xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>
    "func.return"(%0) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

