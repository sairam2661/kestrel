"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_complex_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %2 = "arith.select"(%1, %0, %arg0) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "secret.conceal"(%2) : (tensor<4xi32>) -> !secret_secret_tensor
    "func.return"(%3) : (!secret_secret_tensor) -> ()
  }) : () -> ()
}) : () -> ()