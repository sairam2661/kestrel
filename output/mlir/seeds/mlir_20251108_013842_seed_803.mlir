"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_cmp_subtract"}> ({
    ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
      %1 = "arith.select"(%0, %arg0, %arg1) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %2 = "arith.subi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %3 = "arith.addi"(%1, %2) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      "func.return"(%3) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()