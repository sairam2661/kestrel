"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "vector_add_unranked"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %2 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %4 = "arith.cmpi"(%arg0, %arg1, "sle") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    "func.return"(%0) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()