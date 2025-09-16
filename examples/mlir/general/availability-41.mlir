"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_negate"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %2 = "tosa.negate"(%arg0, %0, %1) : (tensor<13x21x3xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<13x21x3xf32>
    "func.return"(%2) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

