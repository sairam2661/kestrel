"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_rotate_and_add"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "tensor_ext.rotate"(%arg0, 1) : (tensor<3xi32>, i32) -> tensor<3xi32>
    %1 = "tensor_ext.rotate"(%arg1, 2) : (tensor<3xi32>, i32) -> tensor<3xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%2) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()