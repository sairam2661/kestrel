"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x11x11x3xi1>, sym_name = "test_const_i1"}> ({
    %0 = "tosa.const"() <{values = dense<false> : tensor<3x11x11x3xi1>}> : () -> tensor<3x11x11x3xi1>
    "func.return"(%0) : (tensor<3x11x11x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

