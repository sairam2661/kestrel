"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "compare_and_add"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "sge") : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi1>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %2 = "arith.select"(%0, %1, %arg0) : (tensor<3x3xi1>, tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    "func.return"(%2) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()