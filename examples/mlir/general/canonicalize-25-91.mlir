"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xf32>, sym_name = "fold_negate_negate"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %2 = "tosa.negate"(%arg0, %0, %1) : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    %3 = "tosa.negate"(%2, %0, %1) : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    "func.return"(%3) : (tensor<?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

