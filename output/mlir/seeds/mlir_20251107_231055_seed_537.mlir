"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "vector_add_with_cmp"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %2 = "arith.select"(%0, %1, %arg0) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()