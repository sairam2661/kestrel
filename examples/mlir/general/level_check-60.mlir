"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xui8>) -> (), sym_name = "test_const_ui8"}> ({
  ^bb0(%arg0: tensor<1xui8>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xui8>}> : () -> tensor<1xui8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

