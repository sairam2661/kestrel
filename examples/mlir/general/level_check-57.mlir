"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi2>) -> (), sym_name = "test_const_i2"}> ({
  ^bb0(%arg0: tensor<1xi2>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi2>}> : () -> tensor<1xi2>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

