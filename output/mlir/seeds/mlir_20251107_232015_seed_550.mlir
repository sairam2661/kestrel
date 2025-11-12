"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "test_add_and_cmp"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "arith.cmpi"(%0, %arg0, "eq") : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    "func.return"(%1) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>, sym_name = "test_cmp_and_add"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
  "scf.for"(%arg2: index, %arg3: index, %arg4: index) ({
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %0 = "arith.addi"(%arg2, %arg3) : (index, index) -> index
      %1 = "arith.cmpi"(%arg4, %0, "ult") : (index, index) -> i1
      scf.yield %1 : i1
  }) : (index, index, index) -> (i1)
}) : () -> ()