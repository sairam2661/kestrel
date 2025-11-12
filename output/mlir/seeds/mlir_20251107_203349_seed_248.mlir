"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x6xi32>, tensor<5x6xi32>) -> tensor<5x6xi32>, sym_name = "unusual_add_and_cmp"}> ({
    ^bb0(%arg0: tensor<5x6xi32>, %arg1: tensor<5x6xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<5x6xi32>, tensor<5x6xi32>) -> tensor<5x6xi32>
      %1 = "arith.cmpi"(%0, %arg1) <{predicate = 4 : i64}> : (tensor<5x6xi32>, tensor<5x6xi32>) -> tensor<5x6xi1>
      %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<5x6xi32>, tensor<5x6xi32>) -> tensor<5x6xi1>
      %3 = "arith.addi"(%1, %2) : (tensor<5x6xi1>, tensor<5x6xi1>) -> tensor<5x6xi1>
      "func.return"(%3) : (tensor<5x6xi1>) -> ()
  }) : () -> ()
}) : () -> ()