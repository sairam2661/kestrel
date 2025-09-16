"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x11x11x3xf16>, sym_name = "test_const_f16"}> ({
    %0 = "tosa.const"() <{values = dense<2.000000e+00> : tensor<3x11x11x3xf16>}> : () -> tensor<3x11x11x3xf16>
    "func.return"(%0) : (tensor<3x11x11x3xf16>) -> ()
  }) : () -> ()
}) : () -> ()

