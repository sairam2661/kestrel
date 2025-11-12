"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "test_cmp_and_add"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi1>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%1) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()