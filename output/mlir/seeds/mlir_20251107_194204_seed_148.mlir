"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi32>, tensor<4x3x2xi32>) -> tensor<2x3x4xi32>, sym_name = "transpose_and_add"}> ({
  ^bb0(%arg0: tensor<2x3x4xi32>, %arg1: tensor<4x3x2xi32>):
    %0 = "tosa.transpose"(%arg1) ( {"perm" ( 2, 1, 0 ) : i32} ) : (tensor<4x3x2xi32>) -> tensor<2x3x4xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
    "func.return"(%1) : (tensor<2x3x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>, sym_name = "add_constant"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3x4xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = dense<10> : tensor<2x3x4xi32>} > : () -> tensor<2x3x4xi32>
    %3 = "arith.addi"(%arg1, %2) : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
    "func.return"(%3) : (tensor<2x3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()