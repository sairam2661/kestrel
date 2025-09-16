"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>, sym_name = "test_negate_non_const_input1_zp"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<1xf32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "tosa.negate"(%arg0, %arg1, %0) : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    "func.return"(%1) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

