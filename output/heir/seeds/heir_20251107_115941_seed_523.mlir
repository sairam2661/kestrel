"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_rotation_and_multiplication"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "tensor_ext.rotate"(%2, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%3) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()