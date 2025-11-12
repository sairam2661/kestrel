"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_rotation_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflow_overflowFlags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_overflowFlags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_overflowFlags}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()