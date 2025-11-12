"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "test_tensor_interactions"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "tensor.insert"(%1, %0, %arg1) <{index = [0, 0]}> : (i32, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.select"(%arg0, %arg1, %4) : (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()