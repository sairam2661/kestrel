"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> (tensor<4x4xi32>, tensor<4x4xi32>), sym_name = "matrix_operate"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0:2 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> (tensor<4x4xi32>, tensor<4x4xi32>)
    %1:2 = "arith.muli"(%0#0, %0#1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> (tensor<4x4xi32>, tensor<4x4xi32>)
    %2:2 = "arith.subi"(%1#0, %1#1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> (tensor<4x4xi32>, tensor<4x4xi32>)
    "func.return"(%2#0, %2#1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()