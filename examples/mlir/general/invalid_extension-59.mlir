"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x14x19xf32>, tensor<1x19x28xf32>, tensor<1xf32>) -> tensor<1x14x28xf32>, sym_name = "test_matmul_non_const_b_zp"}> ({
  ^bb0(%arg0: tensor<1x14x19xf32>, %arg1: tensor<1x19x28xf32>, %arg2: tensor<1xf32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "tosa.matmul"(%arg0, %arg1, %0, %arg2) : (tensor<1x14x19xf32>, tensor<1x19x28xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1x14x28xf32>
    "func.return"(%1) : (tensor<1x14x28xf32>) -> ()
  }) : () -> ()
}) : () -> ()

