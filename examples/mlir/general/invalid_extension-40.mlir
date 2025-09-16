"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x11x11x3xi4>, sym_name = "test_const_i4"}> ({
    %0 = "tosa.const"() <{values = dense<0> : tensor<3x11x11x3xi4>}> : () -> tensor<3x11x11x3xi4>
    "func.return"(%0) : (tensor<3x11x11x3xi4>) -> ()
  }) : () -> ()
}) : () -> ()

