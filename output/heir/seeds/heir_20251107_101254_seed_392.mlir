"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_add_rotated"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<16xi32>, index) -> tensor<16xi32>
    %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_mode}>: (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()