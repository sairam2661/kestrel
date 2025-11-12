"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_op_combinations"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.mulf"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.select"(%0, %1, %arg0) <{arith.select}> : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()