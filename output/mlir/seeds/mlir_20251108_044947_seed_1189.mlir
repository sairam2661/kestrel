"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "matrix_add_subtract"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "arith.muli"(%2, %0) : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
    %4 = "arith.subi"(%3, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "func.return"(%4) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()