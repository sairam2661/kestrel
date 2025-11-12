"builtin.module"() ({
  "func.func"() <{function_type = (i64, tensor<2x3xi32>) -> (i64, tensor<2x3xi32>), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i64, %arg1: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %0) : (i64, i64) -> i64
    %2 = "arith.constant"() <{value = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %3 = "arith.addi"(%arg1, %2) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%1, %3) : (i64, tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()