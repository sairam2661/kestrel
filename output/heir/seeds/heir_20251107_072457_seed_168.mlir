"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> tensor<4xi32>, sym_name = "rotate_and_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %0 = "tensor_ext.rotate"(%arg0, %arg1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %1 = "tensor_ext.rotate"(%0, %arg1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow} > : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "tensor_ext.rotate"(%3, %arg1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith_overflow} > : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()