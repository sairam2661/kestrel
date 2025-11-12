"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "vector_add_cmp"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "arith.cmpi"("lt", %0, %arg0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %2 = "tosa.const"() <{values = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %3 = "arith.addi"(%0, %2) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%3) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()