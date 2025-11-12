"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<4xi64>) -> tensor<8xi32>, sym_name = "mixed_type_comparison_and_addition"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<4xi64>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.constant"() <{value = dense<3> : tensor<4xi64>}> : () -> tensor<4xi64>
    %2 = "arith.cmpi"(%arg0, %0, "eq") : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %3 = "arith.cmpi"(%arg1, %1, "ne") : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi1>
    %4 = "arith.addi"(%arg0, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()