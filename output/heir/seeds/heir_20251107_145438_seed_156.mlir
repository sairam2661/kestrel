"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_rotate_and_add"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflow}>: (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%2, %3) : (tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%4) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()