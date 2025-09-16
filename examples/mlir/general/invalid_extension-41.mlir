"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x11x11x3xi48>, sym_name = "test_const_i48"}> ({
    %0 = "tosa.const"() <{values = dense<0> : tensor<3x11x11x3xi48>}> : () -> tensor<3x11x11x3xi48>
    "func.return"(%0) : (tensor<3x11x11x3xi48>) -> ()
  }) : () -> ()
}) : () -> ()

