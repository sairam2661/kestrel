"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>, index) -> tensor<8x8xi32>, sym_name = "tensor_rotation_and_addition"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>, %arg2: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8x8xi32>, index) -> tensor<8x8xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<8x8xi32>, index) -> tensor<8x8xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arithoverflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "func.return"(%4) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()