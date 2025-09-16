"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi32>) -> tensor<4xf32>, sym_name = "fold_reshape_constant_splat"}> ({
  ^bb0(%arg0: tensor<1xi32>):
    %0 = "arith.constant"() <{value = dense<1.000000e-01> : tensor<4x1xf32>}> : () -> tensor<4x1xf32>
    %1 = "tensor.reshape"(%0, %arg0) : (tensor<4x1xf32>, tensor<1xi32>) -> tensor<4xf32>
    "func.return"(%1) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

