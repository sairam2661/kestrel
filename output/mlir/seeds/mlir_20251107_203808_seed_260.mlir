"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "mixed_op_fuzz"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %1 = "arith.cmpi"("slt", %0, %arg0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %2 = "arith.cmpi"("sle", %0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %3 = "arith.andi"(%1, %2) : (tensor<4x4xi1>, tensor<4x4xi1>) -> tensor<4x4xi1>
      "func.return"(%3) : (tensor<4x4xi1>) -> ()
  }) : () -> ()
}) : () -> ()