"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x11x11x3xf32>, sym_name = "test_const_f32"}> ({
    %0 = "tosa.const"() <{values = dense<3.000000e+00> : tensor<3x11x11x3xf32>}> : () -> tensor<3x11x11x3xf32>
    "func.return"(%0) : (tensor<3x11x11x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

