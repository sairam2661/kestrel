"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_cmp_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %1 = "arith.constant"() <{value = dense<10> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "arith.addi"(%arg0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.cmpi"(%arg1, %0, "ne") : (tensor<4xi32>, tensor<4xi1>) -> tensor<4xi1>
    %4 = "arith.addi"(%arg1, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.select"(%0, %2, %4) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()