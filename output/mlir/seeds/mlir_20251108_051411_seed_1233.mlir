"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x3xi32>) -> tensor<4x3xi32>, sym_name = "tensor_add_with_scalar"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x3xi32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (i32, tensor<4x3xi32>) -> tensor<4x3xi32>
    %1 = "arith.addi"(%0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>
    "func.return"(%1) : (tensor<4x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()