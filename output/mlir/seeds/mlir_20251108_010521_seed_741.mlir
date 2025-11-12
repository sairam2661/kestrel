"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "tensor_add_and_cmp"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %1 = "arith.cmpi"("eq", %0, %arg1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi1>
    "func.return"(%1) : (tensor<3x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()