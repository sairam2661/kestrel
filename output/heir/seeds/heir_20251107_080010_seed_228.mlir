"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "vector_add_mul"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%2) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()