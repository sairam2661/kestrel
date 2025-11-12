"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %3 = "arith.addi"(%2, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    %4 = "arith.addi"(%3, %1) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
    "func.return"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()