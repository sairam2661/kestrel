"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x8xf32>, tensor<1x8x1xf32>) -> tensor<?x1x1xf32>, sym_name = "matmul_dyn_output"}> ({
  ^bb0(%arg0: tensor<1x1x8xf32>, %arg1: tensor<1x8x1xf32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<1x1x8xf32>, tensor<1x8x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1x1xf32>
    "func.return"(%2) : (tensor<?x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

