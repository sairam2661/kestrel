"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xui32>) -> (), sym_name = "test_const_ui32"}> ({
  ^bb0(%arg0: tensor<1xui32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xui32>}> : () -> tensor<1xui32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

