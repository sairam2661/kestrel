"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf64>) -> (), sym_name = "test_const_f64"}> ({
  ^bb0(%arg0: tensor<1xf64>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf64>}> : () -> tensor<1xf64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

